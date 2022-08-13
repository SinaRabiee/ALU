/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/ASUS/Desktop/Project/Tb_Bonus/RotL.vhd";
extern char *IEEE_P_3620187407;
static const char *ng2 = "rem 0 asked for.  Divide by zero error.";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_853553178_503743352(char *, unsigned char , unsigned char );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3113638285_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(27, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 8240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 8016);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_1(char *t0)
{
    char t19[16];
    char t21[16];
    char t29[16];
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    int t25;
    char *t26;
    int t27;
    unsigned int t28;
    char *t30;
    int t31;
    int t32;
    char *t33;
    int t34;
    char *t35;
    int t36;
    int t37;
    int t38;
    unsigned int t39;
    char *t40;
    int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 12204U);
    t3 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 3248U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 3248U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    if (8 == 0)
        goto LAB2;

LAB3:    t6 = abs(t3);
    t7 = (t6 % 8);
    if (t3 < 0)
        goto LAB4;

LAB5:    t1 = (t0 + 3368U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t7;
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t9 = (t3 == 0);
    if (t9 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3368U);
    t4 = *((char **)t1);
    t3 = *((int *)t4);
    t6 = (7 - t3);
    t13 = (7 - t6);
    xsi_vhdl_check_range_of_slice(7, 0, -1, t6, 0, -1);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t5 = (t0 + 1032U);
    t10 = *((char **)t5);
    t16 = (7 - 7);
    t5 = (t0 + 3368U);
    t11 = *((char **)t5);
    t7 = *((int *)t11);
    t8 = (8 - t7);
    xsi_vhdl_check_range_of_slice(7, 0, -1, 7, t8, -1);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t5 = (t10 + t18);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t0 + 3368U);
    t23 = *((char **)t22);
    t24 = *((int *)t23);
    t25 = (7 - t24);
    t22 = (t21 + 0U);
    t26 = (t22 + 0U);
    *((int *)t26) = t25;
    t26 = (t22 + 4U);
    *((int *)t26) = 0;
    t26 = (t22 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - t25);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t26 = (t22 + 12U);
    *((unsigned int *)t26) = t28;
    t26 = (t0 + 3368U);
    t30 = *((char **)t26);
    t31 = *((int *)t30);
    t32 = (8 - t31);
    t26 = (t29 + 0U);
    t33 = (t26 + 0U);
    *((int *)t33) = 7;
    t33 = (t26 + 4U);
    *((int *)t33) = t32;
    t33 = (t26 + 8U);
    *((int *)t33) = -1;
    t34 = (t32 - 7);
    t28 = (t34 * -1);
    t28 = (t28 + 1);
    t33 = (t26 + 12U);
    *((unsigned int *)t33) = t28;
    t12 = xsi_base_array_concat(t12, t19, t20, (char)97, t1, t21, (char)97, t5, t29, (char)101);
    t33 = (t0 + 3368U);
    t35 = *((char **)t33);
    t36 = *((int *)t35);
    t37 = (7 - t36);
    t38 = (0 - t37);
    t28 = (t38 * -1);
    t28 = (t28 + 1);
    t39 = (1U * t28);
    t33 = (t0 + 3368U);
    t40 = *((char **)t33);
    t41 = *((int *)t40);
    t42 = (8 - t41);
    t43 = (t42 - 7);
    t44 = (t43 * -1);
    t44 = (t44 + 1);
    t45 = (1U * t44);
    t46 = (t39 + t45);
    t9 = (8U != t46);
    if (t9 == 1)
        goto LAB9;

LAB10:    t33 = (t0 + 8304);
    t47 = (t33 + 56U);
    t48 = *((char **)t47);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    memcpy(t50, t12, 8U);
    xsi_driver_first_trans_fast_port(t33);

LAB7:    t1 = (t0 + 8032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_error(ng2);
    goto LAB3;

LAB4:    t8 = (-(t7));
    t7 = t8;
    goto LAB5;

LAB6:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 8304);
    t5 = (t1 + 56U);
    t10 = *((char **)t5);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB7;

LAB9:    xsi_size_not_matching(8U, t46, 0);
    goto LAB10;

}

static void work_a_3113638285_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 8368);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_3(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t1 = (t0 + 12268);
    t3 = (t0 + 8432);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t1 = (t0 + 8496);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 8560);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_6(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 12156U);
    t3 = (t0 + 12276);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 7;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (7 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 8624);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 8048);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 8624);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 8688);
    t10 = (t1 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t14 = (t0 + 8064);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (0 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = (7 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 8752);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_delta(t16, 3U, 1, 0LL);

LAB2:    t21 = (t0 + 8080);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (1 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = (6 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 8816);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_delta(t16, 2U, 1, 0LL);

LAB2:    t21 = (t0 + 8096);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (2 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = (5 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 8880);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_delta(t16, 1U, 1, 0LL);

LAB2:    t21 = (t0 + 8112);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_11(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (3 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = (4 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 8944);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_delta(t16, 0U, 1, 0LL);

LAB2:    t21 = (t0 + 8128);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_12(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 12188U);
    t3 = (t0 + 12284);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 9008);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 8144);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 9008);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3113638285_3212880686_p_13(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    int t17;
    unsigned char t18;
    int t19;
    unsigned char t20;
    int t21;
    unsigned char t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int t29;
    int t30;
    int t31;
    int t32;
    int t33;
    int t34;
    int t35;
    int t36;
    int t37;
    int t38;
    int t39;
    int t40;
    int t41;
    int t42;
    int t43;
    int t44;
    int t45;
    int t46;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 12156U);
    t3 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 3488U);
    t5 = *((char **)t4);
    t4 = (t5 + 0);
    *((int *)t4) = t3;
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t7 = (t3 == 0);
    if (t7 == 1)
        goto LAB5;

LAB6:    t1 = (t0 + 3488U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t9 = (t8 == 1);
    t6 = t9;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t15 = (t3 == 2);
    if (t15 == 1)
        goto LAB22;

LAB23:    t1 = (t0 + 3488U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t16 = (t8 == 3);
    t14 = t16;

LAB24:    if (t14 == 1)
        goto LAB19;

LAB20:    t1 = (t0 + 3488U);
    t5 = *((char **)t1);
    t17 = *((int *)t5);
    t18 = (t17 == 5);
    t13 = t18;

LAB21:    if (t13 == 1)
        goto LAB16;

LAB17:    t1 = (t0 + 3488U);
    t10 = *((char **)t1);
    t19 = *((int *)t10);
    t20 = (t19 == 7);
    t9 = t20;

LAB18:    if (t9 == 1)
        goto LAB13;

LAB14:    t1 = (t0 + 3488U);
    t11 = *((char **)t1);
    t21 = *((int *)t11);
    t22 = (t21 == 11);
    t7 = t22;

LAB15:    if (t7 == 1)
        goto LAB10;

LAB11:    t1 = (t0 + 3488U);
    t12 = *((char **)t1);
    t23 = *((int *)t12);
    t24 = (t23 == 13);
    t6 = t24;

LAB12:    if (t6 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    if (2 == 0)
        goto LAB42;

LAB43:    t8 = abs(t3);
    t17 = (t8 % 2);
    if (t3 < 0)
        goto LAB44;

LAB45:    t15 = (t17 == 0);
    if (t15 == 1)
        goto LAB39;

LAB40:    t1 = (t0 + 3488U);
    t4 = *((char **)t1);
    t21 = *((int *)t4);
    if (3 == 0)
        goto LAB46;

LAB47:    t23 = abs(t21);
    t29 = (t23 % 3);
    if (t21 < 0)
        goto LAB48;

LAB49:    t16 = (t29 == 0);
    t14 = t16;

LAB41:    if (t14 == 1)
        goto LAB36;

LAB37:    t1 = (t0 + 3488U);
    t5 = *((char **)t1);
    t31 = *((int *)t5);
    if (5 == 0)
        goto LAB50;

LAB51:    t32 = abs(t31);
    t33 = (t32 % 5);
    if (t31 < 0)
        goto LAB52;

LAB53:    t18 = (t33 == 0);
    t13 = t18;

LAB38:    if (t13 == 1)
        goto LAB33;

LAB34:    t1 = (t0 + 3488U);
    t10 = *((char **)t1);
    t35 = *((int *)t10);
    if (7 == 0)
        goto LAB54;

LAB55:    t36 = abs(t35);
    t37 = (t36 % 7);
    if (t35 < 0)
        goto LAB56;

LAB57:    t20 = (t37 == 0);
    t9 = t20;

LAB35:    if (t9 == 1)
        goto LAB30;

LAB31:    t1 = (t0 + 3488U);
    t11 = *((char **)t1);
    t39 = *((int *)t11);
    if (11 == 0)
        goto LAB58;

LAB59:    t40 = abs(t39);
    t41 = (t40 % 11);
    if (t39 < 0)
        goto LAB60;

LAB61:    t22 = (t41 == 0);
    t7 = t22;

LAB32:    if (t7 == 1)
        goto LAB27;

LAB28:    t1 = (t0 + 3488U);
    t12 = *((char **)t1);
    t43 = *((int *)t12);
    if (13 == 0)
        goto LAB62;

LAB63:    t44 = abs(t43);
    t45 = (t44 % 13);
    if (t43 < 0)
        goto LAB64;

LAB65:    t24 = (t45 == 0);
    t6 = t24;

LAB29:    if (t6 != 0)
        goto LAB25;

LAB26:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 9072);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t10 = *((char **)t5);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 8160);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 9072);
    t5 = (t1 + 56U);
    t10 = *((char **)t5);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    t6 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 9072);
    t25 = (t1 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB10:    t6 = (unsigned char)1;
    goto LAB12;

LAB13:    t7 = (unsigned char)1;
    goto LAB15;

LAB16:    t9 = (unsigned char)1;
    goto LAB18;

LAB19:    t13 = (unsigned char)1;
    goto LAB21;

LAB22:    t14 = (unsigned char)1;
    goto LAB24;

LAB25:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 9072);
    t25 = (t1 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB27:    t6 = (unsigned char)1;
    goto LAB29;

LAB30:    t7 = (unsigned char)1;
    goto LAB32;

LAB33:    t9 = (unsigned char)1;
    goto LAB35;

LAB36:    t13 = (unsigned char)1;
    goto LAB38;

LAB39:    t14 = (unsigned char)1;
    goto LAB41;

LAB42:    xsi_error(ng2);
    goto LAB43;

LAB44:    t19 = (-(t17));
    t17 = t19;
    goto LAB45;

LAB46:    xsi_error(ng2);
    goto LAB47;

LAB48:    t30 = (-(t29));
    t29 = t30;
    goto LAB49;

LAB50:    xsi_error(ng2);
    goto LAB51;

LAB52:    t34 = (-(t33));
    t33 = t34;
    goto LAB53;

LAB54:    xsi_error(ng2);
    goto LAB55;

LAB56:    t38 = (-(t37));
    t37 = t38;
    goto LAB57;

LAB58:    xsi_error(ng2);
    goto LAB59;

LAB60:    t42 = (-(t41));
    t41 = t42;
    goto LAB61;

LAB62:    xsi_error(ng2);
    goto LAB63;

LAB64:    t46 = (-(t45));
    t45 = t46;
    goto LAB65;

}


extern void work_a_3113638285_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3113638285_3212880686_p_0,(void *)work_a_3113638285_3212880686_p_1,(void *)work_a_3113638285_3212880686_p_2,(void *)work_a_3113638285_3212880686_p_3,(void *)work_a_3113638285_3212880686_p_4,(void *)work_a_3113638285_3212880686_p_5,(void *)work_a_3113638285_3212880686_p_6,(void *)work_a_3113638285_3212880686_p_7,(void *)work_a_3113638285_3212880686_p_8,(void *)work_a_3113638285_3212880686_p_9,(void *)work_a_3113638285_3212880686_p_10,(void *)work_a_3113638285_3212880686_p_11,(void *)work_a_3113638285_3212880686_p_12,(void *)work_a_3113638285_3212880686_p_13};
	xsi_register_didat("work_a_3113638285_3212880686", "isim/Tb_Bonus_isim_beh.exe.sim/work/a_3113638285_3212880686.didat");
	xsi_register_executes(pe);
}
