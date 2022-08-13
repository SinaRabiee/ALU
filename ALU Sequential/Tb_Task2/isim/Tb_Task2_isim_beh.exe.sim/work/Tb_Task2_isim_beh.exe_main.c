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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_0193865939_3212880686_init();
    work_a_1970072606_3212880686_init();
    work_a_1895944657_3212880686_init();
    work_a_0821369819_3212880686_init();
    work_a_0051296500_3212880686_init();
    work_a_3962772756_3212880686_init();
    work_a_1543742391_3212880686_init();
    work_a_2510145309_3212880686_init();
    work_a_2057331453_3212880686_init();
    work_a_1323456162_3212880686_init();
    work_a_3113638285_3212880686_init();
    work_a_3584533340_3212880686_init();
    work_a_1223715000_3212880686_init();
    work_a_2204378559_3212880686_init();
    work_a_0754119003_3212880686_init();
    work_a_0990634480_3212880686_init();
    work_a_0832606739_0953645740_init();
    work_a_2377089213_2372691052_init();


    xsi_register_tops("work_a_2377089213_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
