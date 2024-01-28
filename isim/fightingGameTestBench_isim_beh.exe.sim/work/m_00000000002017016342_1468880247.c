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
static const char *ng0 = "C:/Users/Asus/Desktop/Logical Circuits/LogicCircuitProject/showLives.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {63U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {91U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {79U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {102U, 0U};
static unsigned int ng11[] = {5U, 0U};
static unsigned int ng12[] = {109U, 0U};
static unsigned int ng13[] = {125U, 0U};
static unsigned int ng14[] = {7U, 0U};
static int ng15[] = {1, 0};



static void Always_29_0(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    int t15;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(43, ng0);

LAB28:    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 5);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);

LAB29:    t2 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB34;

LAB35:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB36;

LAB37:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB38;

LAB39:    t2 = ((char*)((ng11)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB40;

LAB41:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB42;

LAB43:    t2 = ((char*)((ng14)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 3);
    if (t15 == 1)
        goto LAB44;

LAB45:
LAB46:
LAB8:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2088);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng15)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t6, 1, t7, 32);
    t13 = (t0 + 2088);
    xsi_vlogvar_assign_value(t13, t16, 0, 0, 1);
    goto LAB2;

LAB6:    xsi_set_current_line(30, ng0);

LAB9:    xsi_set_current_line(31, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 1768);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 5);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);

LAB10:    t2 = ((char*)((ng2)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng11)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng14)));
    t15 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 3);
    if (t15 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB8;

LAB11:    xsi_set_current_line(33, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB13:    xsi_set_current_line(34, ng0);
    t4 = ((char*)((ng4)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB15:    xsi_set_current_line(35, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB17:    xsi_set_current_line(36, ng0);
    t4 = ((char*)((ng8)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB19:    xsi_set_current_line(37, ng0);
    t4 = ((char*)((ng10)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB21:    xsi_set_current_line(38, ng0);
    t4 = ((char*)((ng12)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB23:    xsi_set_current_line(39, ng0);
    t4 = ((char*)((ng13)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB25:    xsi_set_current_line(40, ng0);
    t4 = ((char*)((ng14)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    goto LAB27;

LAB30:    xsi_set_current_line(46, ng0);
    t5 = ((char*)((ng3)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

LAB32:    xsi_set_current_line(47, ng0);
    t5 = ((char*)((ng4)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

LAB34:    xsi_set_current_line(48, ng0);
    t5 = ((char*)((ng6)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

LAB36:    xsi_set_current_line(49, ng0);
    t5 = ((char*)((ng8)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

LAB38:    xsi_set_current_line(50, ng0);
    t5 = ((char*)((ng10)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

LAB40:    xsi_set_current_line(51, ng0);
    t5 = ((char*)((ng12)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

LAB42:    xsi_set_current_line(52, ng0);
    t5 = ((char*)((ng13)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

LAB44:    xsi_set_current_line(53, ng0);
    t5 = ((char*)((ng14)));
    t6 = (t0 + 1928);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    goto LAB46;

}


extern void work_m_00000000002017016342_1468880247_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000002017016342_1468880247", "isim/fightingGameTestBench_isim_beh.exe.sim/work/m_00000000002017016342_1468880247.didat");
	xsi_register_executes(pe);
}
