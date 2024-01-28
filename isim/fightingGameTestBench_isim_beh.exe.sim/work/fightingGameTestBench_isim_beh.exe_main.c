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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001664094856_2396514279_init();
    work_m_00000000003553844008_3864494826_init();
    work_m_00000000002611156743_2136920912_init();
    work_m_00000000002017016342_1468880247_init();
    work_m_00000000003560263555_2035480523_init();
    work_m_00000000004273255874_2969109220_init();
    work_m_00000000000713904137_2762089241_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000713904137_2762089241");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
