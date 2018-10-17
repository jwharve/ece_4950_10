/*
 * proj3.c
 *
 * Academic Student License -- for use by students to meet course
 * requirements and perform academic research at degree granting
 * institutions only.  Not for government, commercial, or other
 * organizational use.
 *
 * Code generation for model "proj3".
 *
 * Model version              : 1.93
 * Simulink Coder version : 8.13 (R2017b) 24-Jul-2017
 * C source code generated on : Wed Oct 17 16:12:25 2018
 *
 * Target selection: slrt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Generic->32-bit x86 compatible
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "rt_logging_mmi.h"
#include "proj3_capi.h"
#include "proj3.h"
#include "proj3_private.h"

/* Block signals (auto storage) */
B_proj3_T proj3_B;

/* Continuous states */
X_proj3_T proj3_X;

/* Block states (auto storage) */
DW_proj3_T proj3_DW;

/* External outputs (root outports fed by signals with auto storage) */
ExtY_proj3_T proj3_Y;

/* Real-time model */
RT_MODEL_proj3_T proj3_M_;
RT_MODEL_proj3_T *const proj3_M = &proj3_M_;

/*
 * This function updates continuous states using the ODE3 fixed-step
 * solver algorithm
 */
static void rt_ertODEUpdateContinuousStates(RTWSolverInfo *si )
{
  /* Solver Matrices */
  static const real_T rt_ODE3_A[3] = {
    1.0/2.0, 3.0/4.0, 1.0
  };

  static const real_T rt_ODE3_B[3][3] = {
    { 1.0/2.0, 0.0, 0.0 },

    { 0.0, 3.0/4.0, 0.0 },

    { 2.0/9.0, 1.0/3.0, 4.0/9.0 }
  };

  time_T t = rtsiGetT(si);
  time_T tnew = rtsiGetSolverStopTime(si);
  time_T h = rtsiGetStepSize(si);
  real_T *x = rtsiGetContStates(si);
  ODE3_IntgData *id = (ODE3_IntgData *)rtsiGetSolverData(si);
  real_T *y = id->y;
  real_T *f0 = id->f[0];
  real_T *f1 = id->f[1];
  real_T *f2 = id->f[2];
  real_T hB[3];
  int_T i;
  int_T nXc = 4;
  rtsiSetSimTimeStep(si,MINOR_TIME_STEP);

  /* Save the state values at time t in y, we'll use x as ynew. */
  (void) memcpy(y, x,
                (uint_T)nXc*sizeof(real_T));

  /* Assumes that rtsiSetT and ModelOutputs are up-to-date */
  /* f0 = f(t,y) */
  rtsiSetdX(si, f0);
  proj3_derivatives();

  /* f(:,2) = feval(odefile, t + hA(1), y + f*hB(:,1), args(:)(*)); */
  hB[0] = h * rt_ODE3_B[0][0];
  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[0]);
  rtsiSetdX(si, f1);
  proj3_output();
  proj3_derivatives();

  /* f(:,3) = feval(odefile, t + hA(2), y + f*hB(:,2), args(:)(*)); */
  for (i = 0; i <= 1; i++) {
    hB[i] = h * rt_ODE3_B[1][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1]);
  }

  rtsiSetT(si, t + h*rt_ODE3_A[1]);
  rtsiSetdX(si, f2);
  proj3_output();
  proj3_derivatives();

  /* tnew = t + hA(3);
     ynew = y + f*hB(:,3); */
  for (i = 0; i <= 2; i++) {
    hB[i] = h * rt_ODE3_B[2][i];
  }

  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (f0[i]*hB[0] + f1[i]*hB[1] + f2[i]*hB[2]);
  }

  rtsiSetT(si, tnew);
  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

/* Model output function */
void proj3_output(void)
{
  real_T *lastU;
  real_T lastTime;
  real_T u1;
  real_T u2;
  if (rtmIsMajorTimeStep(proj3_M)) {
    /* set solver stop time */
    if (!(proj3_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(&proj3_M->solverInfo, ((proj3_M->Timing.clockTickH0
        + 1) * proj3_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(&proj3_M->solverInfo, ((proj3_M->Timing.clockTick0 +
        1) * proj3_M->Timing.stepSize0 + proj3_M->Timing.clockTickH0 *
        proj3_M->Timing.stepSize0 * 4294967296.0));
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(proj3_M)) {
    proj3_M->Timing.t[0] = rtsiGetT(&proj3_M->solverInfo);
  }

  if (rtmIsMajorTimeStep(proj3_M)) {
    /* Gain: '<Root>/gain' incorporates:
     *  Constant: '<Root>/myVar'
     */
    proj3_B.Setpoint = proj3_P.gain_Gain * proj3_P.myVar_Value;

    /* Outport: '<Root>/setpoint_Out' */
    proj3_Y.setpoint_Out = proj3_B.Setpoint;

    /* Constant: '<Root>/1 - Use simulated motor 0 - Use real motor' */
    proj3_B.uUsesimulatedmotor0Userealmotor =
      proj3_P.uUsesimulatedmotor0Userealmotor;
  }

  /* Integrator: '<S3>/Integrator6' */
  proj3_B.Integrator6 = proj3_X.Integrator6_CSTATE;

  /* Product: '<S8>/Product2' */
  proj3_B.Product2 = proj3_B.Integrator6 *
    proj3_B.uUsesimulatedmotor0Userealmotor;
  if (rtmIsMajorTimeStep(proj3_M)) {
    /* Logic: '<S8>/complement the input1' */
    proj3_B.complementtheinput1 = !(proj3_B.uUsesimulatedmotor0Userealmotor !=
      0.0);

    /* S-Function (encquanserq8): '<S2>/Channel 0 of  Encoder Inputs ' */

    /* Level2 S-Function Block: '<S2>/Channel 0 of  Encoder Inputs ' (encquanserq8) */
    {
      SimStruct *rts = proj3_M->childSfunctions[0];
      sfcnOutputs(rts,1);
    }

    /* Gain: '<S2>/angular_position =  [relative_count//COUNTS_PER_REV] *360 degrees' */
    proj3_B.angular_positionrelative_countC =
      proj3_P.angular_positionrelative_countC * proj3_B.Channel0ofEncoderInputs;

    /* Product: '<S8>/Product3' */
    proj3_B.Product3 = (real_T)proj3_B.complementtheinput1 *
      proj3_B.angular_positionrelative_countC;
  }

  /* Sum: '<S8>/Sum2' */
  proj3_B.Sum2 = proj3_B.Product2 + proj3_B.Product3;

  /* Sum: '<Root>/Sum1' */
  proj3_B.ErrorSignal = proj3_B.Setpoint - proj3_B.Sum2;

  /* Outport: '<Root>/errorSignal_Out' */
  proj3_Y.errorSignal_Out = proj3_B.ErrorSignal;

  /* Outport: '<Root>/motorPos_Out' */
  proj3_Y.motorPos_Out = proj3_B.Sum2;

  /* S-Function (scblock): '<S1>/S-Function' */
  /* ok to acquire for <S1>/S-Function */
  proj3_DW.SFunction_IWORK.AcquireOK = 1;

  /* S-Function (scblock): '<S4>/S-Function' */
  /* ok to acquire for <S4>/S-Function */
  proj3_DW.SFunction_IWORK_i.AcquireOK = 1;

  /* S-Function (scblock): '<S6>/S-Function' */
  /* ok to acquire for <S6>/S-Function */
  proj3_DW.SFunction_IWORK_it.AcquireOK = 1;
  if (rtmIsMajorTimeStep(proj3_M)) {
    /* S-Function (scblock): '<S7>/S-Function' */
    /* ok to acquire for <S7>/S-Function */
    proj3_DW.SFunction_IWORK_n.AcquireOK = 1;
  }

  /* Derivative: '<Root>/Derivative1' */
  if ((proj3_DW.TimeStampA >= proj3_M->Timing.t[0]) && (proj3_DW.TimeStampB >=
       proj3_M->Timing.t[0])) {
    proj3_B.Derivative1 = 0.0;
  } else {
    lastTime = proj3_DW.TimeStampA;
    lastU = &proj3_DW.LastUAtTimeA;
    if (proj3_DW.TimeStampA < proj3_DW.TimeStampB) {
      if (proj3_DW.TimeStampB < proj3_M->Timing.t[0]) {
        lastTime = proj3_DW.TimeStampB;
        lastU = &proj3_DW.LastUAtTimeB;
      }
    } else {
      if (proj3_DW.TimeStampA >= proj3_M->Timing.t[0]) {
        lastTime = proj3_DW.TimeStampB;
        lastU = &proj3_DW.LastUAtTimeB;
      }
    }

    lastTime = proj3_M->Timing.t[0] - lastTime;
    proj3_B.Derivative1 = (proj3_B.ErrorSignal - *lastU) / lastTime;
  }

  /* End of Derivative: '<Root>/Derivative1' */

  /* Gain: '<Root>/Gain' */
  proj3_B.Gain[0] = proj3_P.Gain_Gain * proj3_B.Setpoint;
  proj3_B.Gain[1] = proj3_P.Gain_Gain * proj3_B.Sum2;
  proj3_B.Gain[2] = proj3_P.Gain_Gain * proj3_B.ErrorSignal;

  /* Integrator: '<Root>/Integrator1' */
  proj3_B.Integrator1 = proj3_X.Integrator1_CSTATE;

  /* Gain: '<Root>/Kd' */
  proj3_B.Kd = proj3_P.Kd_Gain * proj3_B.Derivative1;

  /* Gain: '<Root>/Ki' */
  proj3_B.Ki = proj3_P.Ki_Gain * proj3_B.Integrator1;

  /* Gain: '<Root>/Kp' */
  proj3_B.Kp = proj3_P.Kp_Gain * proj3_B.ErrorSignal;
  if (rtmIsMajorTimeStep(proj3_M)) {
    /* Logic: '<S5>/complement the input' */
    proj3_B.complementtheinput = !(proj3_B.uUsesimulatedmotor0Userealmotor !=
      0.0);
  }

  /* Sum: '<Root>/Sum4' */
  proj3_B.Sum4 = (proj3_B.Kp + proj3_B.Kd) + proj3_B.Ki;

  /* Product: '<S5>/Product1' */
  proj3_B.Product1 = (real_T)proj3_B.complementtheinput * proj3_B.Sum4;

  /* Saturate: '<S2>/Saturation' */
  lastTime = proj3_B.Product1;
  u1 = proj3_P.Saturation_LowerSat;
  u2 = proj3_P.Saturation_UpperSat;
  if (lastTime > u2) {
    proj3_B.Saturation = u2;
  } else if (lastTime < u1) {
    proj3_B.Saturation = u1;
  } else {
    proj3_B.Saturation = lastTime;
  }

  /* End of Saturate: '<S2>/Saturation' */
  if (rtmIsMajorTimeStep(proj3_M)) {
    /* S-Function (daquanserq8): '<S2>/Channel 0 -Control signal to  motor through amplifier ' */

    /* Level2 S-Function Block: '<S2>/Channel 0 -Control signal to  motor through amplifier ' (daquanserq8) */
    {
      SimStruct *rts = proj3_M->childSfunctions[1];
      sfcnOutputs(rts,1);
    }
  }

  /* Integrator: '<S3>/Integrator5' */
  proj3_B.Integrator5 = proj3_X.Integrator5_CSTATE;

  /* Gain: '<S3>/Back emf Ke1' */
  proj3_B.BackemfKe1 = proj3_P.BackemfKe1_Gain * proj3_B.Integrator5;

  /* Gain: '<S3>/Damping b1' */
  proj3_B.Dampingb1 = proj3_P.Dampingb1_Gain * proj3_B.Integrator5;

  /* Integrator: '<S3>/Integrator1' */
  proj3_B.Integrator1_h = proj3_X.Integrator1_CSTATE_i;

  /* Gain: '<S3>/Gain Kt2' */
  proj3_B.GainKt2 = proj3_P.GainKt2_Gain * proj3_B.Integrator1_h;

  /* Sum: '<S3>/Sum2' */
  proj3_B.Sum2_e = proj3_B.GainKt2 - proj3_B.Dampingb1;

  /* Gain: '<S3>/Gain Kt3' */
  proj3_B.GainKt3 = proj3_P.GainKt3_Gain * proj3_B.Sum2_e;

  /* Product: '<S5>/Product' */
  proj3_B.Product = proj3_B.Sum4 * proj3_B.uUsesimulatedmotor0Userealmotor;

  /* Gain: '<S3>/Resistance R1' */
  proj3_B.ResistanceR1 = proj3_P.ResistanceR1_Gain * proj3_B.Integrator1_h;

  /* Sum: '<S3>/Sum1' */
  proj3_B.Sum1 = (proj3_B.Product - proj3_B.BackemfKe1) - proj3_B.ResistanceR1;

  /* Gain: '<S3>/Inductance' */
  proj3_B.Inductance = proj3_P.Inductance_Gain * proj3_B.Sum1;
}

/* Model update function */
void proj3_update(void)
{
  real_T *lastU;

  /* Update for Derivative: '<Root>/Derivative1' */
  if (proj3_DW.TimeStampA == (rtInf)) {
    proj3_DW.TimeStampA = proj3_M->Timing.t[0];
    lastU = &proj3_DW.LastUAtTimeA;
  } else if (proj3_DW.TimeStampB == (rtInf)) {
    proj3_DW.TimeStampB = proj3_M->Timing.t[0];
    lastU = &proj3_DW.LastUAtTimeB;
  } else if (proj3_DW.TimeStampA < proj3_DW.TimeStampB) {
    proj3_DW.TimeStampA = proj3_M->Timing.t[0];
    lastU = &proj3_DW.LastUAtTimeA;
  } else {
    proj3_DW.TimeStampB = proj3_M->Timing.t[0];
    lastU = &proj3_DW.LastUAtTimeB;
  }

  *lastU = proj3_B.ErrorSignal;

  /* End of Update for Derivative: '<Root>/Derivative1' */
  if (rtmIsMajorTimeStep(proj3_M)) {
    rt_ertODEUpdateContinuousStates(&proj3_M->solverInfo);
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++proj3_M->Timing.clockTick0)) {
    ++proj3_M->Timing.clockTickH0;
  }

  proj3_M->Timing.t[0] = rtsiGetSolverStopTime(&proj3_M->solverInfo);

  {
    /* Update absolute timer for sample time: [0.001s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The absolute time is the multiplication of "clockTick1"
     * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
     * overflow during the application lifespan selected.
     * Timer of this task consists of two 32 bit unsigned integers.
     * The two integers represent the low bits Timing.clockTick1 and the high bits
     * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
     */
    if (!(++proj3_M->Timing.clockTick1)) {
      ++proj3_M->Timing.clockTickH1;
    }

    proj3_M->Timing.t[1] = proj3_M->Timing.clockTick1 *
      proj3_M->Timing.stepSize1 + proj3_M->Timing.clockTickH1 *
      proj3_M->Timing.stepSize1 * 4294967296.0;
  }
}

/* Derivatives for root system: '<Root>' */
void proj3_derivatives(void)
{
  XDot_proj3_T *_rtXdot;
  _rtXdot = ((XDot_proj3_T *) proj3_M->derivs);

  /* Derivatives for Integrator: '<S3>/Integrator6' */
  _rtXdot->Integrator6_CSTATE = proj3_B.Integrator5;

  /* Derivatives for Integrator: '<Root>/Integrator1' */
  _rtXdot->Integrator1_CSTATE = proj3_B.ErrorSignal;

  /* Derivatives for Integrator: '<S3>/Integrator5' */
  _rtXdot->Integrator5_CSTATE = proj3_B.GainKt3;

  /* Derivatives for Integrator: '<S3>/Integrator1' */
  _rtXdot->Integrator1_CSTATE_i = proj3_B.Inductance;
}

/* Model initialize function */
void proj3_initialize(void)
{
  /* Start for S-Function (encquanserq8): '<S2>/Channel 0 of  Encoder Inputs ' */
  /* Level2 S-Function Block: '<S2>/Channel 0 of  Encoder Inputs ' (encquanserq8) */
  {
    SimStruct *rts = proj3_M->childSfunctions[0];
    sfcnStart(rts);
    if (ssGetErrorStatus(rts) != (NULL))
      return;
  }

  /* Start for S-Function (scblock): '<S1>/S-Function' */

  /* S-Function Block: <S1>/S-Function (scblock) */
  {
    int i;
    if ((i = rl32eScopeExists(3)) == 0) {
      if ((i = rl32eDefScope(3,2)) != 0) {
        printf("Error creating scope 3\n");
      } else {
        rl32eAddSignal(3, rl32eGetSignalNo("Gain/s1"));
        rl32eAddSignal(3, rl32eGetSignalNo("Gain/s2"));
        rl32eAddSignal(3, rl32eGetSignalNo("Gain/s3"));
        rl32eSetTargetScopeSigFt(3,rl32eGetSignalNo("Gain/s1"),
          "Setpoint        %3.2f");
        rl32eSetTargetScopeSigFt(3,rl32eGetSignalNo("Gain/s2"),
          "Motor Position  %3.2f");
        rl32eSetTargetScopeSigFt(3,rl32eGetSignalNo("Gain/s3"),
          "Error Signal    %3.2f");
        rl32eSetScope(3, 4, 200);
        rl32eSetScope(3, 5, 0);
        rl32eSetScope(3, 6, 10);
        rl32eSetScope(3, 0, 0);
        rl32eSetScope(3, 3, rl32eGetSignalNo("Gain/s1"));
        rl32eSetScope(3, 1, 0.0);
        rl32eSetScope(3, 2, 0);
        rl32eSetScope(3, 9, 0);
        rl32eSetTargetScope(3, 1, 0.0);
        rl32eSetTargetScope(3, 11, 0.0);
        rl32eSetTargetScope(3, 10, 170.0);
        xpceScopeAcqOK(3, &proj3_DW.SFunction_IWORK.AcquireOK);
      }
    }

    if (i) {
      rl32eRestartAcquisition(3);
    }
  }

  /* Start for S-Function (scblock): '<S4>/S-Function' */

  /* S-Function Block: <S4>/S-Function (scblock) */
  {
    int i;
    if ((i = rl32eScopeExists(2)) == 0) {
      if ((i = rl32eDefScope(2,2)) != 0) {
        printf("Error creating scope 2\n");
      } else {
        rl32eAddSignal(2, rl32eGetSignalNo("Sum1"));
        rl32eSetScope(2, 4, 500);
        rl32eSetScope(2, 5, 0);
        rl32eSetScope(2, 6, 10);
        rl32eSetScope(2, 0, 0);
        rl32eSetScope(2, 3, rl32eGetSignalNo("Sum1"));
        rl32eSetScope(2, 1, 0.0);
        rl32eSetScope(2, 2, 0);
        rl32eSetScope(2, 9, 0);
        rl32eSetTargetScope(2, 1, 3.0);
        rl32eSetTargetScope(2, 11, -180.0);
        rl32eSetTargetScope(2, 10, 180.0);
        xpceScopeAcqOK(2, &proj3_DW.SFunction_IWORK_i.AcquireOK);
      }
    }

    if (i) {
      rl32eRestartAcquisition(2);
    }
  }

  /* Start for S-Function (scblock): '<S6>/S-Function' */

  /* S-Function Block: <S6>/S-Function (scblock) */
  {
    int i;
    if ((i = rl32eScopeExists(7)) == 0) {
      if ((i = rl32eDefScope(7,2)) != 0) {
        printf("Error creating scope 7\n");
      } else {
        rl32eAddSignal(7, rl32eGetSignalNo("switching logic/Sum2"));
        rl32eSetScope(7, 4, 500);
        rl32eSetScope(7, 5, 0);
        rl32eSetScope(7, 6, 10);
        rl32eSetScope(7, 0, 0);
        rl32eSetScope(7, 3, rl32eGetSignalNo("switching logic/Sum2"));
        rl32eSetScope(7, 1, 0.0);
        rl32eSetScope(7, 2, 0);
        rl32eSetScope(7, 9, 0);
        rl32eSetTargetScope(7, 1, 3.0);
        rl32eSetTargetScope(7, 11, -180.0);
        rl32eSetTargetScope(7, 10, 180.0);
        xpceScopeAcqOK(7, &proj3_DW.SFunction_IWORK_it.AcquireOK);
      }
    }

    if (i) {
      rl32eRestartAcquisition(7);
    }
  }

  /* Start for S-Function (scblock): '<S7>/S-Function' */

  /* S-Function Block: <S7>/S-Function (scblock) */
  {
    int i;
    if ((i = rl32eScopeExists(1)) == 0) {
      if ((i = rl32eDefScope(1,2)) != 0) {
        printf("Error creating scope 1\n");
      } else {
        rl32eAddSignal(1, rl32eGetSignalNo("gain"));
        rl32eSetScope(1, 4, 500);
        rl32eSetScope(1, 5, 0);
        rl32eSetScope(1, 6, 10);
        rl32eSetScope(1, 0, 0);
        rl32eSetScope(1, 3, rl32eGetSignalNo("gain"));
        rl32eSetScope(1, 1, 0.0);
        rl32eSetScope(1, 2, 0);
        rl32eSetScope(1, 9, 0);
        rl32eSetTargetScope(1, 1, 3.0);
        rl32eSetTargetScope(1, 11, -180.0);
        rl32eSetTargetScope(1, 10, 180.0);
        xpceScopeAcqOK(1, &proj3_DW.SFunction_IWORK_n.AcquireOK);
      }
    }

    if (i) {
      rl32eRestartAcquisition(1);
    }
  }

  /* Start for S-Function (daquanserq8): '<S2>/Channel 0 -Control signal to  motor through amplifier ' */
  /* Level2 S-Function Block: '<S2>/Channel 0 -Control signal to  motor through amplifier ' (daquanserq8) */
  {
    SimStruct *rts = proj3_M->childSfunctions[1];
    sfcnStart(rts);
    if (ssGetErrorStatus(rts) != (NULL))
      return;
  }

  /* InitializeConditions for Integrator: '<S3>/Integrator6' */
  proj3_X.Integrator6_CSTATE = proj3_P.Integrator6_IC;

  /* InitializeConditions for Derivative: '<Root>/Derivative1' */
  proj3_DW.TimeStampA = (rtInf);
  proj3_DW.TimeStampB = (rtInf);

  /* InitializeConditions for Integrator: '<Root>/Integrator1' */
  proj3_X.Integrator1_CSTATE = proj3_P.Integrator1_IC;

  /* InitializeConditions for Integrator: '<S3>/Integrator5' */
  proj3_X.Integrator5_CSTATE = proj3_P.Integrator5_IC;

  /* InitializeConditions for Integrator: '<S3>/Integrator1' */
  proj3_X.Integrator1_CSTATE_i = proj3_P.Integrator1_IC_j;
}

/* Model terminate function */
void proj3_terminate(void)
{
  /* Terminate for S-Function (encquanserq8): '<S2>/Channel 0 of  Encoder Inputs ' */
  /* Level2 S-Function Block: '<S2>/Channel 0 of  Encoder Inputs ' (encquanserq8) */
  {
    SimStruct *rts = proj3_M->childSfunctions[0];
    sfcnTerminate(rts);
  }

  /* Terminate for S-Function (daquanserq8): '<S2>/Channel 0 -Control signal to  motor through amplifier ' */
  /* Level2 S-Function Block: '<S2>/Channel 0 -Control signal to  motor through amplifier ' (daquanserq8) */
  {
    SimStruct *rts = proj3_M->childSfunctions[1];
    sfcnTerminate(rts);
  }
}

/*========================================================================*
 * Start of Classic call interface                                        *
 *========================================================================*/

/* Solver interface called by GRT_Main */
#ifndef USE_GENERATED_SOLVER

void rt_ODECreateIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEDestroyIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEUpdateContinuousStates(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

#endif

void MdlOutputs(int_T tid)
{
  proj3_output();
  UNUSED_PARAMETER(tid);
}

void MdlUpdate(int_T tid)
{
  proj3_update();
  UNUSED_PARAMETER(tid);
}

void MdlInitializeSizes(void)
{
}

void MdlInitializeSampleTimes(void)
{
}

void MdlInitialize(void)
{
}

void MdlStart(void)
{
  proj3_initialize();
}

void MdlTerminate(void)
{
  proj3_terminate();
}

/* Registration function */
RT_MODEL_proj3_T *proj3(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)proj3_M, 0,
                sizeof(RT_MODEL_proj3_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&proj3_M->solverInfo, &proj3_M->Timing.simTimeStep);
    rtsiSetTPtr(&proj3_M->solverInfo, &rtmGetTPtr(proj3_M));
    rtsiSetStepSizePtr(&proj3_M->solverInfo, &proj3_M->Timing.stepSize0);
    rtsiSetdXPtr(&proj3_M->solverInfo, &proj3_M->derivs);
    rtsiSetContStatesPtr(&proj3_M->solverInfo, (real_T **) &proj3_M->contStates);
    rtsiSetNumContStatesPtr(&proj3_M->solverInfo, &proj3_M->Sizes.numContStates);
    rtsiSetNumPeriodicContStatesPtr(&proj3_M->solverInfo,
      &proj3_M->Sizes.numPeriodicContStates);
    rtsiSetPeriodicContStateIndicesPtr(&proj3_M->solverInfo,
      &proj3_M->periodicContStateIndices);
    rtsiSetPeriodicContStateRangesPtr(&proj3_M->solverInfo,
      &proj3_M->periodicContStateRanges);
    rtsiSetErrorStatusPtr(&proj3_M->solverInfo, (&rtmGetErrorStatus(proj3_M)));
    rtsiSetRTModelPtr(&proj3_M->solverInfo, proj3_M);
  }

  rtsiSetSimTimeStep(&proj3_M->solverInfo, MAJOR_TIME_STEP);
  proj3_M->intgData.y = proj3_M->odeY;
  proj3_M->intgData.f[0] = proj3_M->odeF[0];
  proj3_M->intgData.f[1] = proj3_M->odeF[1];
  proj3_M->intgData.f[2] = proj3_M->odeF[2];
  proj3_M->contStates = ((real_T *) &proj3_X);
  rtsiSetSolverData(&proj3_M->solverInfo, (void *)&proj3_M->intgData);
  rtsiSetSolverName(&proj3_M->solverInfo,"ode3");
  proj3_M->solverInfoPtr = (&proj3_M->solverInfo);

  /* Initialize timing info */
  {
    int_T *mdlTsMap = proj3_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    mdlTsMap[1] = 1;
    proj3_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    proj3_M->Timing.sampleTimes = (&proj3_M->Timing.sampleTimesArray[0]);
    proj3_M->Timing.offsetTimes = (&proj3_M->Timing.offsetTimesArray[0]);

    /* task periods */
    proj3_M->Timing.sampleTimes[0] = (0.0);
    proj3_M->Timing.sampleTimes[1] = (0.001);

    /* task offsets */
    proj3_M->Timing.offsetTimes[0] = (0.0);
    proj3_M->Timing.offsetTimes[1] = (0.0);
  }

  rtmSetTPtr(proj3_M, &proj3_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = proj3_M->Timing.sampleHitArray;
    mdlSampleHits[0] = 1;
    mdlSampleHits[1] = 1;
    proj3_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(proj3_M, -1);
  proj3_M->Timing.stepSize0 = 0.001;
  proj3_M->Timing.stepSize1 = 0.001;

  /* Setup for data logging */
  {
    static RTWLogInfo rt_DataLoggingInfo;
    rt_DataLoggingInfo.loggingInterval = NULL;
    proj3_M->rtwLogInfo = &rt_DataLoggingInfo;
  }

  /* Setup for data logging */
  {
    rtliSetLogXSignalInfo(proj3_M->rtwLogInfo, (NULL));
    rtliSetLogXSignalPtrs(proj3_M->rtwLogInfo, (NULL));
    rtliSetLogT(proj3_M->rtwLogInfo, "tout");
    rtliSetLogX(proj3_M->rtwLogInfo, "");
    rtliSetLogXFinal(proj3_M->rtwLogInfo, "");
    rtliSetLogVarNameModifier(proj3_M->rtwLogInfo, "rt_");
    rtliSetLogFormat(proj3_M->rtwLogInfo, 0);
    rtliSetLogMaxRows(proj3_M->rtwLogInfo, 1000);
    rtliSetLogDecimation(proj3_M->rtwLogInfo, 1);

    /*
     * Set pointers to the data and signal info for each output
     */
    {
      static void * rt_LoggedOutputSignalPtrs[] = {
        &proj3_Y.setpoint_Out,
        &proj3_Y.errorSignal_Out,
        &proj3_Y.motorPos_Out
      };

      rtliSetLogYSignalPtrs(proj3_M->rtwLogInfo, ((LogSignalPtrsType)
        rt_LoggedOutputSignalPtrs));
    }

    {
      static int_T rt_LoggedOutputWidths[] = {
        1,
        1,
        1
      };

      static int_T rt_LoggedOutputNumDimensions[] = {
        1,
        1,
        1
      };

      static int_T rt_LoggedOutputDimensions[] = {
        1,
        1,
        1
      };

      static boolean_T rt_LoggedOutputIsVarDims[] = {
        0,
        0,
        0
      };

      static void* rt_LoggedCurrentSignalDimensions[] = {
        (NULL),
        (NULL),
        (NULL)
      };

      static int_T rt_LoggedCurrentSignalDimensionsSize[] = {
        4,
        4,
        4
      };

      static BuiltInDTypeId rt_LoggedOutputDataTypeIds[] = {
        SS_DOUBLE,
        SS_DOUBLE,
        SS_DOUBLE
      };

      static int_T rt_LoggedOutputComplexSignals[] = {
        0,
        0,
        0
      };

      static RTWPreprocessingFcnPtr rt_LoggingPreprocessingFcnPtrs[] = {
        (NULL),
        (NULL),
        (NULL)
      };

      static const char_T *rt_LoggedOutputLabels[] = {
        "Setpoint",
        "Error Signal",
        "Motor Position" };

      static const char_T *rt_LoggedOutputBlockNames[] = {
        "proj3/setpoint_Out",
        "proj3/errorSignal_Out",
        "proj3/motorPos_Out" };

      static RTWLogDataTypeConvert rt_RTWLogDataTypeConvert[] = {
        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 },

        { 0, SS_DOUBLE, SS_DOUBLE, 0, 0, 0, 1.0, 0, 0.0 }
      };

      static RTWLogSignalInfo rt_LoggedOutputSignalInfo[] = {
        {
          3,
          rt_LoggedOutputWidths,
          rt_LoggedOutputNumDimensions,
          rt_LoggedOutputDimensions,
          rt_LoggedOutputIsVarDims,
          rt_LoggedCurrentSignalDimensions,
          rt_LoggedCurrentSignalDimensionsSize,
          rt_LoggedOutputDataTypeIds,
          rt_LoggedOutputComplexSignals,
          (NULL),
          rt_LoggingPreprocessingFcnPtrs,

          { rt_LoggedOutputLabels },
          (NULL),
          (NULL),
          (NULL),

          { rt_LoggedOutputBlockNames },

          { (NULL) },
          (NULL),
          rt_RTWLogDataTypeConvert
        }
      };

      rtliSetLogYSignalInfo(proj3_M->rtwLogInfo, rt_LoggedOutputSignalInfo);

      /* set currSigDims field */
      rt_LoggedCurrentSignalDimensions[0] = &rt_LoggedOutputWidths[0];
      rt_LoggedCurrentSignalDimensions[1] = &rt_LoggedOutputWidths[1];
      rt_LoggedCurrentSignalDimensions[2] = &rt_LoggedOutputWidths[2];
    }

    rtliSetLogY(proj3_M->rtwLogInfo, "yout");
  }

  proj3_M->solverInfoPtr = (&proj3_M->solverInfo);
  proj3_M->Timing.stepSize = (0.001);
  rtsiSetFixedStepSize(&proj3_M->solverInfo, 0.001);
  rtsiSetSolverMode(&proj3_M->solverInfo, SOLVER_MODE_SINGLETASKING);

  /* block I/O */
  proj3_M->blockIO = ((void *) &proj3_B);
  (void) memset(((void *) &proj3_B), 0,
                sizeof(B_proj3_T));

  /* parameters */
  proj3_M->defaultParam = ((real_T *)&proj3_P);

  /* states (continuous) */
  {
    real_T *x = (real_T *) &proj3_X;
    proj3_M->contStates = (x);
    (void) memset((void *)&proj3_X, 0,
                  sizeof(X_proj3_T));
  }

  /* states (dwork) */
  proj3_M->dwork = ((void *) &proj3_DW);
  (void) memset((void *)&proj3_DW, 0,
                sizeof(DW_proj3_T));

  /* external outputs */
  proj3_M->outputs = (&proj3_Y);
  (void) memset((void *)&proj3_Y, 0,
                sizeof(ExtY_proj3_T));

  /* Initialize DataMapInfo substructure containing ModelMap for C API */
  proj3_InitializeDataMapInfo();

  /* child S-Function registration */
  {
    RTWSfcnInfo *sfcnInfo = &proj3_M->NonInlinedSFcns.sfcnInfo;
    proj3_M->sfcnInfo = (sfcnInfo);
    rtssSetErrorStatusPtr(sfcnInfo, (&rtmGetErrorStatus(proj3_M)));
    rtssSetNumRootSampTimesPtr(sfcnInfo, &proj3_M->Sizes.numSampTimes);
    proj3_M->NonInlinedSFcns.taskTimePtrs[0] = &(rtmGetTPtr(proj3_M)[0]);
    proj3_M->NonInlinedSFcns.taskTimePtrs[1] = &(rtmGetTPtr(proj3_M)[1]);
    rtssSetTPtrPtr(sfcnInfo,proj3_M->NonInlinedSFcns.taskTimePtrs);
    rtssSetTStartPtr(sfcnInfo, &rtmGetTStart(proj3_M));
    rtssSetTFinalPtr(sfcnInfo, &rtmGetTFinal(proj3_M));
    rtssSetTimeOfLastOutputPtr(sfcnInfo, &rtmGetTimeOfLastOutput(proj3_M));
    rtssSetStepSizePtr(sfcnInfo, &proj3_M->Timing.stepSize);
    rtssSetStopRequestedPtr(sfcnInfo, &rtmGetStopRequested(proj3_M));
    rtssSetDerivCacheNeedsResetPtr(sfcnInfo, &proj3_M->derivCacheNeedsReset);
    rtssSetZCCacheNeedsResetPtr(sfcnInfo, &proj3_M->zCCacheNeedsReset);
    rtssSetContTimeOutputInconsistentWithStateAtMajorStepPtr(sfcnInfo,
      &proj3_M->CTOutputIncnstWithState);
    rtssSetSampleHitsPtr(sfcnInfo, &proj3_M->Timing.sampleHits);
    rtssSetPerTaskSampleHitsPtr(sfcnInfo, &proj3_M->Timing.perTaskSampleHits);
    rtssSetSimModePtr(sfcnInfo, &proj3_M->simMode);
    rtssSetSolverInfoPtr(sfcnInfo, &proj3_M->solverInfoPtr);
  }

  proj3_M->Sizes.numSFcns = (2);

  /* register each child */
  {
    (void) memset((void *)&proj3_M->NonInlinedSFcns.childSFunctions[0], 0,
                  2*sizeof(SimStruct));
    proj3_M->childSfunctions = (&proj3_M->NonInlinedSFcns.childSFunctionPtrs[0]);
    proj3_M->childSfunctions[0] = (&proj3_M->NonInlinedSFcns.childSFunctions[0]);
    proj3_M->childSfunctions[1] = (&proj3_M->NonInlinedSFcns.childSFunctions[1]);

    /* Level2 S-Function Block: proj3/<S2>/Channel 0 of  Encoder Inputs  (encquanserq8) */
    {
      SimStruct *rts = proj3_M->childSfunctions[0];

      /* timing info */
      time_T *sfcnPeriod = proj3_M->NonInlinedSFcns.Sfcn0.sfcnPeriod;
      time_T *sfcnOffset = proj3_M->NonInlinedSFcns.Sfcn0.sfcnOffset;
      int_T *sfcnTsMap = proj3_M->NonInlinedSFcns.Sfcn0.sfcnTsMap;
      (void) memset((void*)sfcnPeriod, 0,
                    sizeof(time_T)*1);
      (void) memset((void*)sfcnOffset, 0,
                    sizeof(time_T)*1);
      ssSetSampleTimePtr(rts, &sfcnPeriod[0]);
      ssSetOffsetTimePtr(rts, &sfcnOffset[0]);
      ssSetSampleTimeTaskIDPtr(rts, sfcnTsMap);

      {
        ssSetBlkInfo2Ptr(rts, &proj3_M->NonInlinedSFcns.blkInfo2[0]);
      }

      _ssSetBlkInfo2PortInfo2Ptr(rts,
        &proj3_M->NonInlinedSFcns.inputOutputPortInfo2[0]);

      /* Set up the mdlInfo pointer */
      ssSetRTWSfcnInfo(rts, proj3_M->sfcnInfo);

      /* Allocate memory of model methods 2 */
      {
        ssSetModelMethods2(rts, &proj3_M->NonInlinedSFcns.methods2[0]);
      }

      /* Allocate memory of model methods 3 */
      {
        ssSetModelMethods3(rts, &proj3_M->NonInlinedSFcns.methods3[0]);
      }

      /* Allocate memory of model methods 4 */
      {
        ssSetModelMethods4(rts, &proj3_M->NonInlinedSFcns.methods4[0]);
      }

      /* Allocate memory for states auxilliary information */
      {
        ssSetStatesInfo2(rts, &proj3_M->NonInlinedSFcns.statesInfo2[0]);
        ssSetPeriodicStatesInfo(rts,
          &proj3_M->NonInlinedSFcns.periodicStatesInfo[0]);
      }

      /* outputs */
      {
        ssSetPortInfoForOutputs(rts,
          &proj3_M->NonInlinedSFcns.Sfcn0.outputPortInfo[0]);
        _ssSetNumOutputPorts(rts, 1);
        _ssSetPortInfo2ForOutputUnits(rts,
          &proj3_M->NonInlinedSFcns.Sfcn0.outputPortUnits[0]);
        ssSetOutputPortUnit(rts, 0, 0);

        /* port 0 */
        {
          _ssSetOutputPortNumDimensions(rts, 0, 1);
          ssSetOutputPortWidth(rts, 0, 1);
          ssSetOutputPortSignal(rts, 0, ((real_T *)
            &proj3_B.Channel0ofEncoderInputs));
        }
      }

      /* path info */
      ssSetModelName(rts, "Channel 0 of \nEncoder Inputs ");
      ssSetPath(rts, "proj3/Real motor/Channel 0 of  Encoder Inputs ");
      ssSetRTModel(rts,proj3_M);
      ssSetParentSS(rts, (NULL));
      ssSetRootSS(rts, rts);
      ssSetVersion(rts, SIMSTRUCT_VERSION_LEVEL2);

      /* parameters */
      {
        mxArray **sfcnParams = (mxArray **)
          &proj3_M->NonInlinedSFcns.Sfcn0.params;
        ssSetSFcnParamsCount(rts, 12);
        ssSetSFcnParamsPtr(rts, &sfcnParams[0]);
        ssSetSFcnParam(rts, 0, (mxArray*)proj3_P.Channel0ofEncoderInputs_P1_Size);
        ssSetSFcnParam(rts, 1, (mxArray*)proj3_P.Channel0ofEncoderInputs_P2_Size);
        ssSetSFcnParam(rts, 2, (mxArray*)proj3_P.Channel0ofEncoderInputs_P3_Size);
        ssSetSFcnParam(rts, 3, (mxArray*)proj3_P.Channel0ofEncoderInputs_P4_Size);
        ssSetSFcnParam(rts, 4, (mxArray*)proj3_P.Channel0ofEncoderInputs_P5_Size);
        ssSetSFcnParam(rts, 5, (mxArray*)proj3_P.Channel0ofEncoderInputs_P6_Size);
        ssSetSFcnParam(rts, 6, (mxArray*)proj3_P.Channel0ofEncoderInputs_P7_Size);
        ssSetSFcnParam(rts, 7, (mxArray*)proj3_P.Channel0ofEncoderInputs_P8_Size);
        ssSetSFcnParam(rts, 8, (mxArray*)proj3_P.Channel0ofEncoderInputs_P9_Size);
        ssSetSFcnParam(rts, 9, (mxArray*)proj3_P.Channel0ofEncoderInputs_P10_Siz);
        ssSetSFcnParam(rts, 10, (mxArray*)
                       proj3_P.Channel0ofEncoderInputs_P11_Siz);
        ssSetSFcnParam(rts, 11, (mxArray*)
                       proj3_P.Channel0ofEncoderInputs_P12_Siz);
      }

      /* work vectors */
      ssSetIWork(rts, (int_T *) &proj3_DW.Channel0ofEncoderInputs_IWORK[0]);

      {
        struct _ssDWorkRecord *dWorkRecord = (struct _ssDWorkRecord *)
          &proj3_M->NonInlinedSFcns.Sfcn0.dWork;
        struct _ssDWorkAuxRecord *dWorkAuxRecord = (struct _ssDWorkAuxRecord *)
          &proj3_M->NonInlinedSFcns.Sfcn0.dWorkAux;
        ssSetSFcnDWork(rts, dWorkRecord);
        ssSetSFcnDWorkAux(rts, dWorkAuxRecord);
        _ssSetNumDWork(rts, 1);

        /* IWORK */
        ssSetDWorkWidth(rts, 0, 3);
        ssSetDWorkDataType(rts, 0,SS_INTEGER);
        ssSetDWorkComplexSignal(rts, 0, 0);
        ssSetDWork(rts, 0, &proj3_DW.Channel0ofEncoderInputs_IWORK[0]);
      }

      /* registration */
      encquanserq8(rts);
      sfcnInitializeSizes(rts);
      sfcnInitializeSampleTimes(rts);

      /* adjust sample time */
      ssSetSampleTime(rts, 0, 0.001);
      ssSetOffsetTime(rts, 0, 0.0);
      sfcnTsMap[0] = 1;

      /* set compiled values of dynamic vector attributes */
      ssSetNumNonsampledZCs(rts, 0);

      /* Update connectivity flags for each port */
      _ssSetOutputPortConnected(rts, 0, 1);
      _ssSetOutputPortBeingMerged(rts, 0, 0);

      /* Update the BufferDstPort flags for each input port */
    }

    /* Level2 S-Function Block: proj3/<S2>/Channel 0 -Control signal to  motor through amplifier  (daquanserq8) */
    {
      SimStruct *rts = proj3_M->childSfunctions[1];

      /* timing info */
      time_T *sfcnPeriod = proj3_M->NonInlinedSFcns.Sfcn1.sfcnPeriod;
      time_T *sfcnOffset = proj3_M->NonInlinedSFcns.Sfcn1.sfcnOffset;
      int_T *sfcnTsMap = proj3_M->NonInlinedSFcns.Sfcn1.sfcnTsMap;
      (void) memset((void*)sfcnPeriod, 0,
                    sizeof(time_T)*1);
      (void) memset((void*)sfcnOffset, 0,
                    sizeof(time_T)*1);
      ssSetSampleTimePtr(rts, &sfcnPeriod[0]);
      ssSetOffsetTimePtr(rts, &sfcnOffset[0]);
      ssSetSampleTimeTaskIDPtr(rts, sfcnTsMap);

      {
        ssSetBlkInfo2Ptr(rts, &proj3_M->NonInlinedSFcns.blkInfo2[1]);
      }

      _ssSetBlkInfo2PortInfo2Ptr(rts,
        &proj3_M->NonInlinedSFcns.inputOutputPortInfo2[1]);

      /* Set up the mdlInfo pointer */
      ssSetRTWSfcnInfo(rts, proj3_M->sfcnInfo);

      /* Allocate memory of model methods 2 */
      {
        ssSetModelMethods2(rts, &proj3_M->NonInlinedSFcns.methods2[1]);
      }

      /* Allocate memory of model methods 3 */
      {
        ssSetModelMethods3(rts, &proj3_M->NonInlinedSFcns.methods3[1]);
      }

      /* Allocate memory of model methods 4 */
      {
        ssSetModelMethods4(rts, &proj3_M->NonInlinedSFcns.methods4[1]);
      }

      /* Allocate memory for states auxilliary information */
      {
        ssSetStatesInfo2(rts, &proj3_M->NonInlinedSFcns.statesInfo2[1]);
        ssSetPeriodicStatesInfo(rts,
          &proj3_M->NonInlinedSFcns.periodicStatesInfo[1]);
      }

      /* inputs */
      {
        _ssSetNumInputPorts(rts, 1);
        ssSetPortInfoForInputs(rts,
          &proj3_M->NonInlinedSFcns.Sfcn1.inputPortInfo[0]);
        _ssSetPortInfo2ForInputUnits(rts,
          &proj3_M->NonInlinedSFcns.Sfcn1.inputPortUnits[0]);
        ssSetInputPortUnit(rts, 0, 0);

        /* port 0 */
        {
          real_T const **sfcnUPtrs = (real_T const **)
            &proj3_M->NonInlinedSFcns.Sfcn1.UPtrs0;
          sfcnUPtrs[0] = &proj3_B.Saturation;
          ssSetInputPortSignalPtrs(rts, 0, (InputPtrsType)&sfcnUPtrs[0]);
          _ssSetInputPortNumDimensions(rts, 0, 1);
          ssSetInputPortWidth(rts, 0, 1);
        }
      }

      /* path info */
      ssSetModelName(rts,
                     "Channel 0 -Control signal to \nmotor through amplifier ");
      ssSetPath(rts,
                "proj3/Real motor/Channel 0 -Control signal to  motor through amplifier ");
      ssSetRTModel(rts,proj3_M);
      ssSetParentSS(rts, (NULL));
      ssSetRootSS(rts, rts);
      ssSetVersion(rts, SIMSTRUCT_VERSION_LEVEL2);

      /* parameters */
      {
        mxArray **sfcnParams = (mxArray **)
          &proj3_M->NonInlinedSFcns.Sfcn1.params;
        ssSetSFcnParamsCount(rts, 9);
        ssSetSFcnParamsPtr(rts, &sfcnParams[0]);
        ssSetSFcnParam(rts, 0, (mxArray*)proj3_P.Channel0Controlsignaltomotorthr);
        ssSetSFcnParam(rts, 1, (mxArray*)proj3_P.Channel0Controlsignaltomotort_h);
        ssSetSFcnParam(rts, 2, (mxArray*)proj3_P.Channel0Controlsignaltomotort_e);
        ssSetSFcnParam(rts, 3, (mxArray*)proj3_P.Channel0Controlsignaltomotor_e1);
        ssSetSFcnParam(rts, 4, (mxArray*)proj3_P.Channel0Controlsignaltomotor_cz);
        ssSetSFcnParam(rts, 5, (mxArray*)proj3_P.Channel0Controlsignaltomotort_l);
        ssSetSFcnParam(rts, 6, (mxArray*)proj3_P.Channel0Controlsignaltomotort_b);
        ssSetSFcnParam(rts, 7, (mxArray*)proj3_P.Channel0Controlsignaltomotort_a);
        ssSetSFcnParam(rts, 8, (mxArray*)proj3_P.Channel0Controlsignaltomotor_lv);
      }

      /* work vectors */
      ssSetRWork(rts, (real_T *) &proj3_DW.Channel0Controlsignaltomotorthr[0]);
      ssSetIWork(rts, (int_T *) &proj3_DW.Channel0Controlsignaltomotort_l);

      {
        struct _ssDWorkRecord *dWorkRecord = (struct _ssDWorkRecord *)
          &proj3_M->NonInlinedSFcns.Sfcn1.dWork;
        struct _ssDWorkAuxRecord *dWorkAuxRecord = (struct _ssDWorkAuxRecord *)
          &proj3_M->NonInlinedSFcns.Sfcn1.dWorkAux;
        ssSetSFcnDWork(rts, dWorkRecord);
        ssSetSFcnDWorkAux(rts, dWorkAuxRecord);
        _ssSetNumDWork(rts, 2);

        /* RWORK */
        ssSetDWorkWidth(rts, 0, 16);
        ssSetDWorkDataType(rts, 0,SS_DOUBLE);
        ssSetDWorkComplexSignal(rts, 0, 0);
        ssSetDWork(rts, 0, &proj3_DW.Channel0Controlsignaltomotorthr[0]);

        /* IWORK */
        ssSetDWorkWidth(rts, 1, 1);
        ssSetDWorkDataType(rts, 1,SS_INTEGER);
        ssSetDWorkComplexSignal(rts, 1, 0);
        ssSetDWork(rts, 1, &proj3_DW.Channel0Controlsignaltomotort_l);
      }

      /* registration */
      daquanserq8(rts);
      sfcnInitializeSizes(rts);
      sfcnInitializeSampleTimes(rts);

      /* adjust sample time */
      ssSetSampleTime(rts, 0, 0.001);
      ssSetOffsetTime(rts, 0, 0.0);
      sfcnTsMap[0] = 1;

      /* set compiled values of dynamic vector attributes */
      ssSetNumNonsampledZCs(rts, 0);

      /* Update connectivity flags for each port */
      _ssSetInputPortConnected(rts, 0, 1);

      /* Update the BufferDstPort flags for each input port */
      ssSetInputPortBufferDstPort(rts, 0, -1);
    }
  }

  /* Initialize Sizes */
  proj3_M->Sizes.numContStates = (4);  /* Number of continuous states */
  proj3_M->Sizes.numPeriodicContStates = (0);/* Number of periodic continuous states */
  proj3_M->Sizes.numY = (3);           /* Number of model outputs */
  proj3_M->Sizes.numU = (0);           /* Number of model inputs */
  proj3_M->Sizes.sysDirFeedThru = (0); /* The model is not direct feedthrough */
  proj3_M->Sizes.numSampTimes = (2);   /* Number of sample times */
  proj3_M->Sizes.numBlocks = (40);     /* Number of blocks */
  proj3_M->Sizes.numBlockIO = (31);    /* Number of block outputs */
  proj3_M->Sizes.numBlockPrms = (83);  /* Sum of parameter "widths" */
  return proj3_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
