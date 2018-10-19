/*
 * proj3_data.c
 *
 * Academic Student License -- for use by students to meet course
 * requirements and perform academic research at degree granting
 * institutions only.  Not for government, commercial, or other
 * organizational use.
 *
 * Code generation for model "proj3".
 *
 * Model version              : 1.91
 * Simulink Coder version : 8.13 (R2017b) 24-Jul-2017
 * C source code generated on : Fri Oct 19 14:18:37 2018
 *
 * Target selection: slrt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Generic->32-bit x86 compatible
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "proj3.h"
#include "proj3_private.h"

/* Block parameters (auto storage) */
P_proj3_T proj3_P = {
  /* Expression: 0
   * Referenced by: '<Root>/myVar'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<Root>/gain'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S3>/Integrator6'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/1 - Use simulated motor 0 - Use real motor'
   */
  0.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P1_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: boardtype
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  2.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P2_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: channel
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  2.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P3_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: initialCount
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  0.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P4_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: prescale
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  1.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P5_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: quadrature
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  4.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P6_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: mode
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  0.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P7_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: synchronousIndex
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  0.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P8_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: indexPolarity
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  0.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P9_Size
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: preserveCounts
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  0.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P10_Siz
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: sampleTime
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  0.001,

  /* Computed Parameter: Channel0ofEncoderInputs_P11_Siz
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: pciBus
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  0.0,

  /* Computed Parameter: Channel0ofEncoderInputs_P12_Siz
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  { 1.0, 1.0 },

  /* Expression: pciSlot
   * Referenced by: '<S2>/Channel 0 of  Encoder Inputs '
   */
  -1.0,

  /* Expression: 360/1600
   * Referenced by: '<S2>/angular_position =  [relative_count//COUNTS_PER_REV] *360 degrees'
   */
  0.225,

  /* Expression: 1
   * Referenced by: '<Root>/Gain'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Integrator1'
   */
  0.0,

  /* Expression: .011
   * Referenced by: '<Root>/Kd'
   */
  0.011,

  /* Expression: .026
   * Referenced by: '<Root>/Ki'
   */
  0.026,

  /* Expression: .5
   * Referenced by: '<Root>/Kp'
   */
  0.5,

  /* Expression: 10
   * Referenced by: '<S2>/Saturation'
   */
  10.0,

  /* Expression: -10
   * Referenced by: '<S2>/Saturation'
   */
  -10.0,

  /* Computed Parameter: Channel0Controlsignaltomotorthr
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: boardtype
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  2.0,

  /* Computed Parameter: Channel0Controlsignaltomotort_h
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: channel
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  1.0,

  /* Computed Parameter: Channel0Controlsignaltomotort_e
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: range
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  -10.0,

  /* Computed Parameter: Channel0Controlsignaltomotor_e1
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: simul
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  0.0,

  /* Computed Parameter: Channel0Controlsignaltomotor_cz
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: reset
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  1.0,

  /* Computed Parameter: Channel0Controlsignaltomotort_l
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: initValue
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  0.0,

  /* Computed Parameter: Channel0Controlsignaltomotort_b
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: sampleTime
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  0.001,

  /* Computed Parameter: Channel0Controlsignaltomotort_a
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: pciBus
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  0.0,

  /* Computed Parameter: Channel0Controlsignaltomotor_lv
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  { 1.0, 1.0 },

  /* Expression: pciSlot
   * Referenced by: '<S2>/Channel 0 -Control signal to  motor through amplifier '
   */
  -1.0,

  /* Expression: 0
   * Referenced by: '<S3>/Integrator5'
   */
  0.0,

  /* Expression: 0.0274
   * Referenced by: '<S3>/Back emf Ke1'
   */
  0.0274,

  /* Expression: 3.5077E-6
   * Referenced by: '<S3>/Damping b1'
   */
  3.5077E-6,

  /* Expression: 0
   * Referenced by: '<S3>/Integrator1'
   */
  0.0,

  /* Expression: 0.0274
   * Referenced by: '<S3>/Gain Kt2'
   */
  0.0274,

  /* Expression: 1/(3.2284E-6)
   * Referenced by: '<S3>/Gain Kt3'
   */
  309750.96022797673,

  /* Expression: 4
   * Referenced by: '<S3>/Resistance R1'
   */
  4.0,

  /* Expression: 1/(1E-2)
   * Referenced by: '<S3>/Inductance'
   */
  100.0
};
