//**********************************************************************
// Copyright (c) 2016-2018 Xilinx Inc.  All Rights Reserved
//**********************************************************************
//
//   TLM wrapper for Slice IP 
//   Provides a sc_module anchor to receive IP params. This IP will come into picture when M*N Stream 
//   design with TDEST width is more than 4. As NOC_MUX sel_in width at most 4 and Slice IP will slice the 
//   incoming TDEST to 4 bits and send to NOC_MUX IP 
//**********************************************************************

#ifndef _led_xlslice_0_4_core_h_
#define _led_xlslice_0_4_core_h_

#include <systemc.h>
#include "properties.h"


class led_xlslice_0_4_core : public sc_module 
{
    public: 
       led_xlslice_0_4_core (sc_core::sc_module_name nm, const xsc::common_cpp::properties& props)
            : sc_module(nm)
              , Din    ( "Din" )
              , Dout   ( "Dout" )
    {
        SC_HAS_PROCESS(led_xlslice_0_4_core);
        SC_METHOD(get_slice_value);
        sensitive << Din;

    }

    virtual ~led_xlslice_0_4_core() = default;

    void get_slice_value()
    {
        std::cout << __func__<< " :: "<< sc_time_stamp() << std::endl;
        Dout.write(Din.read().get_word(0));
    }
   
    public: 
        sc_in< sc_bv<64 > >   Din;
        sc_out< sc_bv <32 > >  Dout;

};

#endif

