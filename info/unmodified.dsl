/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130725-64 [Jul 30 2013]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of iASLaGqSJc.aml, Sat Jun 14 02:24:17 2014
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000C387 (50055)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x9D
 *     OEM ID           "A1279"
 *     OEM Table ID     "A1279001"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20060113 (537264403)
 */
DefinitionBlock ("iASLaGqSJc.aml", "DSDT", 1, "A1279", "A1279001", 0x00000001)
{
    Scope (_PR)
    {
        Processor (P001, 0x01, 0x00000810, 0x06) {}
        Alias (P001, CPU1)
        Processor (P002, 0x02, 0x00000000, 0x00) {}
        Alias (P002, CPU2)
        Processor (P003, 0x03, 0x00000000, 0x00) {}
        Alias (P003, CPU3)
        Processor (P004, 0x04, 0x00000000, 0x00) {}
        Alias (P004, CPU4)
        Processor (P005, 0x05, 0x00000000, 0x00) {}
        Alias (P005, CPU5)
        Processor (P006, 0x06, 0x00000000, 0x00) {}
        Alias (P006, CPU6)
        Processor (P007, 0x07, 0x00000000, 0x00) {}
        Alias (P007, CPU7)
        Processor (P008, 0x08, 0x00000000, 0x00) {}
        Alias (P008, CPU8)
        Processor (P009, 0x09, 0x00000000, 0x00) {}
        Alias (P009, CPU9)
        Processor (P010, 0x0A, 0x00000000, 0x00) {}
        Processor (P011, 0x0B, 0x00000000, 0x00) {}
        Processor (P012, 0x0C, 0x00000000, 0x00) {}
        Processor (P013, 0x0D, 0x00000000, 0x00) {}
        Processor (P014, 0x0E, 0x00000000, 0x00) {}
        Processor (P015, 0x0F, 0x00000000, 0x00) {}
        Processor (P016, 0x10, 0x00000000, 0x00) {}
    }

    Name (DP80, 0x80)
    Name (DP90, 0x90)
    Name (WKTP, Zero)
    Name (SPIO, 0x2E)
    Name (IOHW, 0x0290)
    Name (IOSB, Zero)
    Name (IOSL, 0x10)
    Name (IOHB, 0x0290)
    Name (IOHL, 0x10)
    Name (PMBS, 0x0800)
    Name (PMLN, 0x80)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (SMBL, Zero)
    Name (PM30, 0x0830)
    Name (SUSW, 0xFF)
    Name (TPBA, 0xFED40000)
    Name (TPBL, 0x5000)
    Name (APIC, One)
    Name (SMIP, 0xB2)
    Name (PCIB, 0xE0000000)
    Name (PCIL, 0x10000000)
    Name (SMIT, 0xB2)
    Name (CMRQ, 0xE0)
    Name (CMER, 0xE1)
    Name (CMOR, 0xE3)
    Name (SMBS, 0x0400)
    Name (CPUC, 0x10)
    OperationRegion (BIOS, SystemMemory, 0xBF798064, 0xFF)
    Field (BIOS, ByteAcc, NoLock, Preserve)
    {
        SS1,    1, 
        SS2,    1, 
        SS3,    1, 
        SS4,    1, 
        Offset (0x01), 
        IOST,   16, 
        TOPM,   32, 
        ROMS,   32, 
        MG1B,   32, 
        MG1L,   32, 
        MG2B,   32, 
        MG2L,   32, 
        Offset (0x1C), 
        DMAX,   8, 
        HPTA,   32, 
        CPB0,   32, 
        CPB1,   32, 
        CPB2,   32, 
        CPB3,   32, 
        ASSB,   8, 
        AOTB,   8, 
        AAXB,   32, 
        SMIF,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        MPEN,   8, 
        TPMF,   8, 
        MG3B,   32, 
        MG3L,   32, 
        MH1B,   32, 
        MH1L,   32, 
        OSTP,   8
    }

    Method (RRIO, 4, NotSerialized)
    {
        Store ("RRIO", Debug)
    }

    Method (RDMA, 3, NotSerialized)
    {
        Store ("rDMA", Debug)
    }

    Name (PICM, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            Store (0xAA, DBG8)
        }
        Else
        {
            Store (0xAC, DBG8)
        }

        Store (Arg0, PICM)
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If (LNotEqual (OSVR, Ones))
        {
            Return (OSVR)
        }

        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
        Store (OSYS (), _T_0)
        If (LEqual (_T_0, One))
        {
            Store (0x03, OSVR)
        }
        Else
        {
            If (LEqual (_T_0, 0x10))
            {
                Store (One, OSVR)
            }
            Else
            {
                If (LEqual (_T_0, 0x11))
                {
                    Store (0x02, OSVR)
                }
                Else
                {
                    If (LEqual (_T_0, 0x12))
                    {
                        Store (0x04, OSVR)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x13))
                        {
                            Store (Zero, OSVR)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x14))
                            {
                                Store (Zero, OSVR)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x15))
                                {
                                    Store (Zero, OSVR)
                                }
                            }
                        }
                    }
                }
            }
        }

        Return (OSVR)
    }

    Method (MCTH, 2, NotSerialized)
    {
        If (LLess (SizeOf (Arg0), SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Add (SizeOf (Arg0), One, Local0)
        Name (BUF0, Buffer (Local0) {})
        Name (BUF1, Buffer (Local0) {})
        Store (Arg0, BUF0)
        Store (Arg1, BUF1)
        While (Local0)
        {
            Decrement (Local0)
            If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (
                BUF1, Local0))))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (ShiftLeft (SS1, One), Local0)
        Or (Local0, ShiftLeft (SS2, 0x02), Local0)
        Or (Local0, ShiftLeft (SS3, 0x03), Local0)
        Or (Local0, ShiftLeft (SS4, 0x04), Local0)
        If (And (ShiftLeft (One, Arg1), Local0))
        {
            Store (Arg1, Index (PRWP, One))
        }
        Else
        {
            ShiftRight (Local0, One, Local0)
            If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
            {
                FindSetLeftBit (Local0, Index (PRWP, One))
            }
            Else
            {
                FindSetRightBit (Local0, Index (PRWP, One))
            }
        }

        Return (PRWP)
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    OperationRegion (DEB0, SystemIO, DP80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, DP90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Method (OSYS, 0, NotSerialized)
    {
        Store (0x10, Local0)
        If (CondRefOf (_OSI, Local1))
        {
            If (_OSI ("Windows 2000"))
            {
                Store (0x12, Local0)
            }

            If (_OSI ("Windows 2001"))
            {
                Store (0x13, Local0)
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                Store (0x13, Local0)
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                Store (0x13, Local0)
            }

            If (_OSI ("Windows 2001.1"))
            {
                Store (0x14, Local0)
            }

            If (_OSI ("Windows 2001.1 SP1"))
            {
                Store (0x14, Local0)
            }

            If (_OSI ("Windows 2006"))
            {
                Store (0x15, Local0)
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                Store (0x12, Local0)
            }
            Else
            {
                If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    Store (0x11, Local0)
                }

                If (MCTH (_OS, "Linux"))
                {
                    Store (One, Local0)
                }
            }
        }

        Return (Local0)
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x42)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKE, 
                Zero
            }
        })
        Name (AR00, Package (0x41)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x03, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                One, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x02, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x03, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                One, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x03, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x02, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x03, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x14
            }
        })
        Name (PR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR11, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2F
            }
        })
        Name (PR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR12, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2A
            }
        })
        Name (PR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR13, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x24
            }
        })
        Name (PR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR14, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x23
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x22
            }
        })
        Name (PR15, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR15, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1D
            }
        })
        Name (PR16, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR16, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1B
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x27
            }
        })
        Name (PR17, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR17, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x26
            }
        })
        Name (PR18, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR18, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x27
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x25
            }
        })
        Name (PR19, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR19, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x29
            }
        })
        Name (PR1A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR1A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1F
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2D
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR01, Package (0x08)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR01, Package (0x08)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,6,7,10,11,12,14,15}
        })
        Name (PRSB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5}
        })
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Device (IOH)
            {
                Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadWrite,
                        0xFBF00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFC000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFD000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE000000,         // Address Base
                        0x00C00000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEC8A000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED10000,         // Address Base
                        0x00001000,         // Address Length
                        )
                })
            }

            Method (NPTS, 1, NotSerialized)
            {
            }

            Method (NWAK, 1, NotSerialized)
            {
            }

            Device (NPE2)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR12)
                    }

                    Return (PR12)
                }
            }

            Device (NPE4)
            {
                Name (_ADR, 0x00040000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR14)
                    }

                    Return (PR14)
                }
            }

            Device (NPE5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR15)
                    }

                    Return (PR15)
                }
            }

            Device (NPE6)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR16)
                    }

                    Return (PR16)
                }
            }

            Device (NPE8)
            {
                Name (_ADR, 0x00080000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR18)
                    }

                    Return (PR18)
                }
            }

            Device (NPE9)
            {
                Name (_ADR, 0x00090000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR19)
                    }

                    Return (PR19)
                }
            }

            Device (NPEA)
            {
                Name (_ADR, 0x000A0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR1A)
                    }

                    Return (PR1A)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0B, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (SBRG)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Device (IELK)
                {
                    Name (_HID, "AWY0001")  // _HID: Hardware ID
                    OperationRegion (RXA0, PCI_Config, 0xA0, 0x20)
                    Field (RXA0, ByteAcc, NoLock, Preserve)
                    {
                            ,   9, 
                        PBLV,   1, 
                        Offset (0x10), 
                            ,   1, 
                        PBMS,   1, 
                            ,   1, 
                        PMCS,   1, 
                        ECNS,   1, 
                        Offset (0x11), 
                        ECT1,   16, 
                        ELEN,   1, 
                        Offset (0x14)
                    }

                    Method (\_GPE._L0A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        Notify (\_SB.PCI0.SBRG.IELK, 0x81)
                        Store (One, \_SB.PCI0.SBRG.IELK.PMCS)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (ELEN)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (SMOD, 1, NotSerialized)
                    {
                    }

                    Method (GPBS, 0, NotSerialized)
                    {
                        Return (XOr (PBLV, One))
                    }
                }

                Method (SPTS, 1, NotSerialized)
                {
                    Store (One, PS1S)
                    Store (One, PS1E)
                    Store (One, SLPS)
                }

                Method (SWAK, 1, NotSerialized)
                {
                    Store (Zero, SLPS)
                    Store (Zero, PS1E)
                    If (LAnd (LEqual (Arg0, One), RTCS)) {}
                    Else
                    {
                        If (LAnd (LEqual (Arg0, 0x03), BRTC)) {}
                        Else
                        {
                            Notify (PWRB, 0x02)
                        }
                    }
                }

                OperationRegion (APMP, SystemIO, SMIP, 0x02)
                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    APMC,   8, 
                    APMS,   8
                }

                Field (APMP, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                        ,   1, 
                    BRTC,   1
                }

                OperationRegion (PMS0, SystemIO, PMBS, 0x04)
                Field (PMS0, ByteAcc, NoLock, Preserve)
                {
                        ,   10, 
                    RTCS,   1, 
                        ,   4, 
                    WAKS,   1, 
                    Offset (0x03), 
                    PWBT,   1, 
                    Offset (0x04)
                }

                OperationRegion (SMIE, SystemIO, PM30, 0x08)
                Field (SMIE, ByteAcc, NoLock, Preserve)
                {
                        ,   4, 
                    PS1E,   1, 
                        ,   31, 
                    PS1S,   1, 
                    Offset (0x08)
                }

                Scope (\_SB)
                {
                    Name (SLPS, Zero)
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (FDC)
                {
                    Name (_HID, EisaId ("PNP0700"))  // _HID: Hardware ID
                    Method (_FDE, 0, NotSerialized)  // _FDE: Floppy Disk Enumerate
                    {
                        Name (FDEP, Package (0x05)
                        {
                            Zero, 
                            Zero, 
                            0x02, 
                            0x02, 
                            0x02
                        })
                        If (_STA ())
                        {
                            Store (One, Index (FDEP, Zero))
                        }

                        Return (FDEP)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (DSTA (0x03))
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        DCNT (0x03, Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        DCRS (0x03, One)
                        Store (IRQM, IRQE)
                        Store (DMAM, DMAE)
                        Store (IO11, IO21)
                        Store (IO12, IO22)
                        Store (0x06, LEN2)
                        Add (IO21, 0x07, IO31)
                        Store (IO31, IO32)
                        Store (One, LEN3)
                        Return (CRS2)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        DSRS (Arg0, 0x03)
                        CreateWordField (Arg0, 0x11, IRQE)
                        CreateByteField (Arg0, 0x14, DMAE)
                        ENFG (CGLD (0x03))
                        If (IRQE)
                        {
                            FindSetRightBit (IRQE, Local0)
                            Subtract (Local0, One, INTR)
                        }
                        Else
                        {
                            Store (Zero, INTR)
                        }

                        If (DMAE)
                        {
                            FindSetRightBit (DMAE, Local0)
                            Subtract (Local0, One, DMCH)
                        }
                        Else
                        {
                            Store (0x04, DMCH)
                        }

                        EXFG ()
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F0,             // Range Minimum
                                0x03F0,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x03F7,             // Range Minimum
                                0x03F7,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {6}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {2}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03F0,             // Range Minimum
                                0x03F0,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x03F7,             // Range Minimum
                                0x03F7,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0370,             // Range Minimum
                                0x0370,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x0377,             // Range Minimum
                                0x0377,             // Range Maximum
                                0x01,               // Alignment
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {3,4,5,6,7,10,11,12}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,2,3}
                        }
                        EndDependentFn ()
                    })
                }

                Device (SIOR)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Method (_UID, 0, NotSerialized)  // _UID: Unique ID
                    {
                        Return (SPIO)
                    }

                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y00)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y01)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y02)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (LAnd (LNotEqual (SPIO, 0x03F0), LGreater (SPIO, 0xF0)))
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y00._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y00._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y00._LEN, GPL1)  // _LEN: Length
                            Store (SPIO, GP10)
                            Store (SPIO, GP11)
                            Store (0x02, GPL1)
                        }

                        If (IOSB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y01._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y01._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y01._LEN, GPL2)  // _LEN: Length
                            Store (IOSB, GP20)
                            Store (IOSB, GP21)
                            Store (IOSL, GPL2)
                        }

                        If (IOHB)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y02._MIN, GP30)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.SIOR._Y02._MAX, GP31)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.SIOR._Y02._LEN, GPL3)  // _LEN: Length
                            Store (IOHB, GP30)
                            Store (IOHB, GP31)
                            Store (IOHL, GPL3)
                        }

                        Return (CRS)
                    }
                }

                Name (DCAT, Package (0x16)
                {
                    0x02, 
                    0x03, 
                    One, 
                    Zero, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0x06, 
                    0x09, 
                    0xFF, 
                    0xFF, 
                    0xFF, 
                    0xFF
                })
                Method (ENFG, 1, NotSerialized)
                {
                    Store (0x87, INDX)
                    Store (0x87, INDX)
                    Store (Arg0, LDN)
                }

                Method (EXFG, 0, NotSerialized)
                {
                    Store (0xAA, INDX)
                }

                Method (LPTM, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    And (OPT0, 0x02, Local0)
                    EXFG ()
                    Return (Local0)
                }

                Method (UHID, 1, NotSerialized)
                {
                    If (LEqual (Arg0, One))
                    {
                        ENFG (CGLD (Arg0))
                        And (OPT1, 0x38, Local0)
                        EXFG ()
                        If (Local0)
                        {
                            Return (0x1005D041)
                        }
                    }

                    Return (0x0105D041)
                }

                Method (SIOK, 1, NotSerialized)
                {
                    ENFG (0x0A)
                    And (0xFF, OPT3, OPT3)
                    And (Arg0, One, Local0)
                    Or (OPT2, Local0, OPT2)
                    Store (And (Arg0, One), ACTR)
                    EXFG ()
                }

                Name (KBFG, One)
                Name (MSFG, One)
                Name (U1FG, One)
                Name (U2FG, One)
                OperationRegion (KBRW, SystemIO, 0x60, 0x05)
                Field (KBRW, ByteAcc, NoLock, Preserve)
                {
                    KP60,   8, 
                    Offset (0x04), 
                    KP64,   8
                }

                OperationRegion (KB64, SystemIO, 0x64, One)
                Field (KB64, ByteAcc, NoLock, Preserve)
                {
                        ,   1, 
                    KRDY,   1, 
                    Offset (0x01)
                }

                Method (SIOS, 1, NotSerialized)
                {
                    Store ("SIOS", Debug)
                    And (CRE0, 0x1F, CRE0)
                    If (LEqual (Arg0, One))
                    {
                        SIOK (Ones)
                        ENFG (0x0A)
                        If (KBFG)
                        {
                            Or (OPT6, 0x10, OPT6)
                        }

                        If (MSFG)
                        {
                            Or (OPT6, 0x20, OPT6)
                        }

                        EXFG ()
                    }

                    If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
                    {
                        If (WKTP)
                        {
                            SIOK (Ones)
                            ENFG (0x0A)
                            If (KBFG)
                            {
                                Or (OPT6, 0x10, OPT6)
                            }

                            If (MSFG)
                            {
                                Or (OPT6, 0x20, OPT6)
                            }

                            EXFG ()
                        }
                        Else
                        {
                            ENFG (0x0A)
                            If (KBFG)
                            {
                                Or (CRE0, 0x41, CRE0)
                            }

                            If (MSFG)
                            {
                                Or (CRE0, 0x22, CRE0)
                                Or (CRE6, 0x80, CRE6)
                            }

                            EXFG ()
                        }
                    }
                }

                Method (SIOW, 1, NotSerialized)
                {
                    Store ("SIOW", Debug)
                    SIOK (Zero)
                    ENFG (0x0A)
                    And (OPT6, 0xCF, OPT6)
                    And (OPT2, 0xFE, OPT2)
                    And (CRE0, 0x1D, CRE0)
                    And (CRE6, 0x7F, CRE6)
                    EXFG ()
                }

                Method (SIOH, 0, NotSerialized)
                {
                    Store ("SIOH", Debug)
                    ENFG (0x0A)
                    If (And (OPT3, 0x10))
                    {
                        Notify (PS2K, 0x02)
                    }

                    If (And (OPT3, 0x20))
                    {
                        Notify (PS2M, 0x02)
                    }

                    SIOK (Zero)
                }

                OperationRegion (IOID, SystemIO, SPIO, 0x02)
                Field (IOID, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x07), 
                    LDN,    8, 
                    Offset (0x22), 
                    FDCP,   1, 
                        ,   2, 
                    LPTP,   1, 
                    URAP,   1, 
                    URBP,   1, 
                    Offset (0x2C), 
                    CR2C,   8, 
                    Offset (0x30), 
                    ACTR,   8, 
                    Offset (0x60), 
                    IOAH,   8, 
                    IOAL,   8, 
                    IOH2,   8, 
                    IOL2,   8, 
                    Offset (0x70), 
                    INTR,   8, 
                    Offset (0x74), 
                    DMCH,   8, 
                    Offset (0xE0), 
                    CRE0,   8, 
                    CRE1,   8, 
                    CRE2,   8, 
                    CRE3,   8, 
                    CRE4,   8, 
                    CRE5,   8, 
                    CRE6,   8, 
                    CRE7,   8, 
                    CRE8,   8, 
                    CRE9,   8, 
                    Offset (0xF0), 
                    OPT0,   8, 
                    OPT1,   8, 
                    OPT2,   8, 
                    OPT3,   8, 
                    OPT4,   8, 
                    Offset (0xF6), 
                    OPT6,   8
                }

                Method (CGLD, 1, NotSerialized)
                {
                    Return (DerefOf (Index (DCAT, Arg0)))
                }

                Method (DSTA, 1, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    Store (ACTR, Local0)
                    EXFG ()
                    If (LEqual (Local0, 0xFF))
                    {
                        Return (Zero)
                    }

                    And (Local0, One, Local0)
                    Or (IOST, ShiftLeft (Local0, Arg0), IOST)
                    If (Local0)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        If (And (ShiftLeft (One, Arg0), IOST))
                        {
                            Return (0x0D)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Method (DCNT, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    ShiftLeft (IOAH, 0x08, Local1)
                    Or (IOAL, Local1, Local1)
                    If (LAnd (LLess (DMCH, 0x04), LNotEqual (And (DMCH, 0x03, 
                        Local1), Zero)))
                    {
                        RDMA (Arg0, Arg1, Increment (Local1))
                    }

                    Store (Arg1, ACTR)
                    RRIO (Arg0, Arg1, Local1, 0x08)
                    EXFG ()
                }

                Name (CRS1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y05)
                    IRQNoFlags (_Y03)
                        {}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y04)
                        {}
                })
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y03._INT, IRQM)  // _INT: Interrupts
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y04._DMA, DMAM)  // _DMA: Direct Memory Access
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y05._MIN, IO11)  // _MIN: Minimum Base Address
                CreateWordField (CRS1, \_SB.PCI0.SBRG._Y05._MAX, IO12)  // _MAX: Maximum Base Address
                CreateByteField (CRS1, \_SB.PCI0.SBRG._Y05._LEN, LEN1)  // _LEN: Length
                Name (CRS2, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y08)
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0x00,               // Length
                        _Y09)
                    IRQNoFlags (_Y06)
                        {6}
                    DMA (Compatibility, NotBusMaster, Transfer8, _Y07)
                        {2}
                })
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y06._INT, IRQE)  // _INT: Interrupts
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y07._DMA, DMAE)  // _DMA: Direct Memory Access
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y08._MIN, IO21)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y08._MAX, IO22)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y08._LEN, LEN2)  // _LEN: Length
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y09._MIN, IO31)  // _MIN: Minimum Base Address
                CreateWordField (CRS2, \_SB.PCI0.SBRG._Y09._MAX, IO32)  // _MAX: Maximum Base Address
                CreateByteField (CRS2, \_SB.PCI0.SBRG._Y09._LEN, LEN3)  // _LEN: Length
                Method (DCRS, 2, NotSerialized)
                {
                    ENFG (CGLD (Arg0))
                    ShiftLeft (IOAH, 0x08, IO11)
                    Or (IOAL, IO11, IO11)
                    Store (IO11, IO12)
                    Subtract (FindSetRightBit (IO11), One, Local0)
                    ShiftLeft (One, Local0, LEN1)
                    If (INTR)
                    {
                        ShiftLeft (One, INTR, IRQM)
                    }
                    Else
                    {
                        Store (Zero, IRQM)
                    }

                    If (LOr (LGreater (DMCH, 0x03), LEqual (Arg1, Zero)))
                    {
                        Store (Zero, DMAM)
                    }
                    Else
                    {
                        And (DMCH, 0x03, Local1)
                        ShiftLeft (One, Local1, DMAM)
                    }

                    EXFG ()
                    Return (CRS1)
                }

                Method (DSRS, 2, NotSerialized)
                {
                    CreateWordField (Arg0, 0x09, IRQM)
                    CreateByteField (Arg0, 0x0C, DMAM)
                    CreateWordField (Arg0, 0x02, IO11)
                    ENFG (CGLD (Arg1))
                    ShiftLeft (IOAH, 0x08, Local1)
                    Or (IOAL, Local1, Local1)
                    RRIO (Arg1, Zero, Local1, 0x08)
                    RRIO (Arg1, One, IO11, 0x08)
                    And (IO11, 0xFF, IOAL)
                    ShiftRight (IO11, 0x08, IOAH)
                    If (IRQM)
                    {
                        FindSetRightBit (IRQM, Local0)
                        Subtract (Local0, One, INTR)
                    }
                    Else
                    {
                        Store (Zero, INTR)
                    }

                    If (DMAM)
                    {
                        FindSetRightBit (DMAM, Local0)
                        Subtract (Local0, One, DMCH)
                    }
                    Else
                    {
                        Store (0x04, DMCH)
                    }

                    EXFG ()
                    DCNT (Arg1, One)
                }

                Device (RMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x00,               // Alignment
                            0x0A,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x00,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x00,               // Alignment
                            0x0E,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0084,             // Range Minimum
                            0x0084,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0088,             // Range Minimum
                            0x0088,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x008C,             // Range Minimum
                            0x008C,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x00,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y0A)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y0B)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x00,               // Length
                            _Y0C)
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0D)
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0E)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0A._MIN, GP00)  // _MIN: Minimum Base Address
                        CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0A._MAX, GP01)  // _MAX: Maximum Base Address
                        CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y0A._LEN, GP0L)  // _LEN: Length
                        Store (PMBS, GP00)
                        Store (PMBS, GP01)
                        Store (PMLN, GP0L)
                        If (SMBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0B._MIN, GP10)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0B._MAX, GP11)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y0B._LEN, GP1L)  // _LEN: Length
                            Store (SMBS, GP10)
                            Store (SMBS, GP11)
                            Store (SMBL, GP1L)
                        }

                        If (GPBS)
                        {
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0C._MIN, GP20)  // _MIN: Minimum Base Address
                            CreateWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0C._MAX, GP21)  // _MAX: Maximum Base Address
                            CreateByteField (CRS, \_SB.PCI0.SBRG.RMSC._Y0C._LEN, GP2L)  // _LEN: Length
                            Store (GPBS, GP20)
                            Store (GPBS, GP21)
                            Store (GPLN, GP2L)
                        }

                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0D._LEN, TML1)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0D._BAS, TMB1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0E._LEN, TML2)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.RMSC._Y0E._BAS, TMB2)  // _BAS: Base Address
                        Store (0xFED20000, TMB1)
                        Subtract (TPBA, 0xFED20000, TML1)
                        If (TPMF)
                        {
                            Add (TPBA, TPBL, TMB2)
                        }
                        Else
                        {
                            Add (TPBA, Zero, TMB2)
                        }

                        Subtract (0xFED90000, TMB2, TML2)
                        Return (CRS)
                    }
                }

                Scope (\)
                {
                    OperationRegion (RAMW, SystemMemory, 0xBF7DC000, 0x00010000)
                    Field (RAMW, ByteAcc, NoLock, Preserve)
                    {
                        PAR0,   32, 
                        PAR1,   32, 
                        PAR2,   32
                    }

                    OperationRegion (IOB2, SystemIO, 0xB2, 0x02)
                    Field (IOB2, ByteAcc, NoLock, Preserve)
                    {
                        SMIC,   8, 
                        SMIS,   8
                    }

                    Method (ISMI, 1, Serialized)
                    {
                        Store (Arg0, SMIC)
                    }

                    Method (GNVS, 1, Serialized)
                    {
                        Store (Arg0, PAR0)
                        ISMI (0x70)
                        Return (PAR1)
                    }

                    Method (SNVS, 2, Serialized)
                    {
                        Store (Arg0, PAR0)
                        Store (Arg1, PAR1)
                        ISMI (0x71)
                    }

                    Method (SMSR, 3, Serialized)
                    {
                        Store (Arg0, PAR0)
                        Store (Arg1, PAR1)
                        Store (Arg2, PAR2)
                        ISMI (0x79)
                    }

                    Method (GMAX, 1, Serialized)
                    {
                        Store (Arg0, PAR0)
                        ISMI (0x7A)
                        Return (PAR1)
                    }

                    Method (GMDX, 1, Serialized)
                    {
                        Store (Arg0, PAR0)
                        ISMI (0x7B)
                        Return (PAR1)
                    }

                    Method (GCAX, 1, Serialized)
                    {
                        Store (Arg0, PAR0)
                        ISMI (0x7C)
                        Return (PAR1)
                    }

                    Method (GCDX, 1, Serialized)
                    {
                        Store (Arg0, PAR0)
                        ISMI (0x7D)
                        Return (PAR1)
                    }
                }

                Scope (\_SB.PCI0.SBRG)
                {
                    Device (ASOC)
                    {
                        Name (_HID, "ATK0110")  // _HID: Hardware ID
                        Name (_UID, 0x01010110)  // _UID: Unique ID
                        Name (MVID, 0x3E)
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_INI, 0, NotSerialized)  // _INI: Initialize
                        {
                            CUPI ()
                            UMVT ()
                        }

                        Method (CUPI, 0, NotSerialized)
                        {
                            Store (GNVS (0x82A0), Local1)
                            Store (Local1, Index (G3C2, 0x04))
                            Store (0x29, Local0)
                            Subtract (Local0, Local1, Index (G3C2, 0x06))
                            Subtract (GNVS (0x82A0), Local1, Index (G3C2, 0x03))
                            And (GMAX (0x0198), 0xFF, Local5)
                            If (LOr (Or (LLess (Local5, GNVS (0x82A0)), Or (And (ShiftRight (
                                GMDX (0x01A0), 0x06), One), And (GMDX (0x0199), One)
                                )), LEqual (And (ShiftRight (GMAX (0xCE), 0x1C), One), 
                                Zero)))
                            {
                                If (LEqual (And (ShiftRight (GMAX (0xCE), 0x1C), One), 
                                    Zero))
                                {
                                    Store (0x40000000, Index (G3C2, 0x02))
                                    Store (Zero, Index (G3DS, 0x06))
                                }
                                Else
                                {
                                    ShiftRight (GMAX (0x35), 0x10, Index (G3DS, 0x06))
                                    If (LOr (LLess (Local5, GNVS (0x82A0)), LAnd (LEqual (Local5, GNVS (
                                        0x82A0)), LEqual (GNVS (0x1793), One))))
                                    {
                                        Store (0x40000000, Index (G3C2, 0x02))
                                    }
                                    Else
                                    {
                                        And (GMAX (0x01AD), 0xFF, Local2)
                                        Subtract (Local2, DerefOf (Index (G3C2, 0x04)), Index (G3C2, 0x03
                                            ))
                                    }
                                }
                            }
                            Else
                            {
                                And (GMAX (0x01AD), 0xFF, Local2)
                                Subtract (Local2, DerefOf (Index (G3C2, 0x04)), Index (G3C2, 0x03
                                    ))
                                ShiftRight (GMAX (0x35), 0x10, Index (G3DS, 0x06))
                            }

                            Store (RBLK (0xD2, Zero, 0x21), CLKR)
                            CreateByteField (CLKR, 0x1D, CB29)
                            Store (DerefOf (Index (G3TB, And (CB29, 0x0F))), Local4)
                            If (LEqual (Local4, 0x06))
                            {
                                Store (0x2710, Index (G3C0, 0x04))
                                Store (0x97, Index (G3C0, 0x06))
                            }
                            Else
                            {
                                If (LEqual (Local4, 0x04))
                                {
                                    Store (0x4E20, Index (G3C0, 0x04))
                                    Store (0x012D, Index (G3C0, 0x06))
                                }
                                Else
                                {
                                    If (LEqual (Local4, 0x03))
                                    {
                                        Store (0x4E20, Index (G3C0, 0x04))
                                        Store (0x012D, Index (G3C0, 0x06))
                                    }
                                }
                            }
                        }

                        Method (UMVT, 0, NotSerialized)
                        {
                            ENFG (0x09)
                            If (And (OPT1, 0x04))
                            {
                                Store (0xFE01E848, Index (G3C1, 0x04))
                                Subtract (0x7A, MVID, Local0)
                                If (LLess (Local0, 0x37))
                                {
                                    Store (Zero, Local0)
                                }
                                Else
                                {
                                    Subtract (Local0, 0x37, Local0)
                                }

                                Store (Local0, Index (G3C1, 0x03))
                            }
                            Else
                            {
                                Subtract (0x7A, MVID, Index (G3C1, 0x03))
                            }

                            If (XOr (GP00, One))
                            {
                                Store (0x71, Index (G3C3, 0x06))
                            }

                            If (LEqual (And (OPT1, 0x08), Zero))
                            {
                                Store (0x31, Index (G3D2, 0x06))
                            }

                            EXFG ()
                        }

                        Name (MBIF, Package (0x08)
                        {
                            0x03, 
                            "P6T SE", 
                            0x03010203, 
                            0x01000100, 
                            0xE0000000, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Name (ASBF, Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                        CreateDWordField (ASBF, Zero, ASB0)
                        CreateDWordField (ASBF, 0x04, ASB1)
                        Method (GGRP, 1, Serialized)
                        {
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            Store (Arg0, _T_0)
                            If (LEqual (_T_0, Zero))
                            {
                                Return (GRP0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    Return (GRP3)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x04))
                                    {
                                        Return (GRP4)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x05))
                                        {
                                            Return (GRP5)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x06))
                                            {
                                                Return (GRP6)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x09))
                                                {
                                                    Return (GRP9)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x0B))
                                                    {
                                                        Return (GRPB)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x0E))
                                                        {
                                                            Return (GRPE)
                                                        }
                                                        Else
                                                        {
                                                            Return (Zero)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (GITM, 1, Serialized)
                        {
                            CreateDWordField (Arg0, Zero, PRM0)
                            CreateByteField (Arg0, 0x03, GPID)
                            Store (One, ASB0)
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            Store (GPID, _T_0)
                            If (LEqual (_T_0, Zero))
                            {
                                GIT0 (PRM0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    GIT3 (PRM0)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x04))
                                    {
                                        GIT4 (PRM0)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x05))
                                        {
                                            GIT5 (PRM0)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x06))
                                            {
                                                GIT6 (PRM0)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x09))
                                                {
                                                    GIT9 (PRM0)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x0B))
                                                    {
                                                        GITB (PRM0)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x0E))
                                                        {
                                                            GITE (PRM0)
                                                        }
                                                        Else
                                                        {
                                                            Store (Zero, ASB0)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (ASBF)
                        }

                        Method (SITM, 1, Serialized)
                        {
                            CreateDWordField (Arg0, Zero, PRM0)
                            CreateDWordField (Arg0, 0x04, PRM1)
                            CreateDWordField (Arg0, 0x08, PRM2)
                            CreateByteField (Arg0, 0x03, GPID)
                            Store (One, ASB0)
                            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                            Store (GPID, _T_0)
                            If (LEqual (_T_0, Zero))
                            {
                                SIT0 (PRM0, PRM1, PRM2)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    SIT3 (PRM0, PRM1, PRM2)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x04))
                                    {
                                        SIT4 (PRM0, PRM1, PRM2)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x05))
                                        {
                                            SIT5 (PRM0, PRM1, PRM2)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x06))
                                            {
                                                SIT6 (PRM0, PRM1, PRM2)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x09))
                                                {
                                                    SIT9 (PRM0, PRM1, PRM2)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x0B))
                                                    {
                                                        SITB (PRM0, PRM1, PRM2)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x0E))
                                                        {
                                                            SITE (PRM0, PRM1, PRM2)
                                                        }
                                                        Else
                                                        {
                                                            Store (Zero, ASB0)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (ASBF)
                        }

                        Method (OP2V, 2, NotSerialized)
                        {
                            Store (DerefOf (Index (Arg1, 0x04)), Local0)
                            Store (DerefOf (Index (Arg1, 0x05)), Local1)
                            Multiply (Arg0, Local1, Local1)
                            Add (Local0, Local1, Local0)
                            Return (Local0)
                        }

                        Method (V2OP, 2, NotSerialized)
                        {
                            Store (DerefOf (Index (Arg1, 0x04)), Local0)
                            Store (DerefOf (Index (Arg1, 0x05)), Local1)
                            Subtract (Arg0, Local0, Local0)
                            Divide (Local0, Local1, Local1, Local0)
                            Return (Local0)
                        }
                    }
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    OperationRegion (^LPCR, SystemMemory, 0xFED1F404, 0x04)
                    Field (LPCR, AnyAcc, NoLock, Preserve)
                    {
                        HPTS,   2, 
                            ,   5, 
                        HPTE,   1, 
                        Offset (0x04)
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LEqual (OSFL (), Zero))
                        {
                            If (HPTE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPTE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.HPET._Y0F._BAS, HPT)  // _BAS: Base Address
                        Multiply (HPTS, 0x1000, Local0)
                        Add (Local0, 0xFED00000, HPT)
                        Return (CRS)
                    }
                }

                OperationRegion (RX80, PCI_Config, Zero, 0xFF)
                Field (RX80, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x80), 
                    LPCD,   16, 
                    LPCE,   16
                }

                Name (DBPT, Package (0x04)
                {
                    Package (0x08)
                    {
                        0x03F8, 
                        0x02F8, 
                        0x0220, 
                        0x0228, 
                        0x0238, 
                        0x02E8, 
                        0x0338, 
                        0x03E8
                    }, 

                    Package (0x08)
                    {
                        0x03F8, 
                        0x02F8, 
                        0x0220, 
                        0x0228, 
                        0x0238, 
                        0x02E8, 
                        0x0338, 
                        0x03E8
                    }, 

                    Package (0x03)
                    {
                        0x0378, 
                        0x0278, 
                        0x03BC
                    }, 

                    Package (0x02)
                    {
                        0x03F0, 
                        0x0370
                    }
                })
                Name (DDLT, Package (0x04)
                {
                    Package (0x02)
                    {
                        Zero, 
                        0xFFF8
                    }, 

                    Package (0x02)
                    {
                        0x04, 
                        0xFF8F
                    }, 

                    Package (0x02)
                    {
                        0x08, 
                        0xFCFF
                    }, 

                    Package (0x02)
                    {
                        0x0C, 
                        0xEFFF
                    }
                })
                Method (RRIO, 4, NotSerialized)
                {
                    If (LAnd (LLessEqual (Arg0, 0x03), LGreaterEqual (Arg0, Zero)))
                    {
                        Store (Match (DerefOf (Index (DBPT, Arg0)), MEQ, Arg2, MTR, 
                            Zero, Zero), Local0)
                        If (LNotEqual (Local0, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (DDLT, Arg0)), Zero)), 
                                Local1)
                            Store (DerefOf (Index (DerefOf (Index (DDLT, Arg0)), One)), 
                                Local2)
                            ShiftLeft (Local0, Local1, Local0)
                            And (LPCD, Local2, LPCD)
                            Or (LPCD, Local0, LPCD)
                            WX82 (Arg0, Arg1)
                        }
                    }

                    If (LEqual (Arg0, 0x08))
                    {
                        If (LEqual (Arg2, 0x0200))
                        {
                            WX82 (0x08, Arg0)
                        }
                        Else
                        {
                            If (LEqual (Arg2, 0x0208))
                            {
                                WX82 (0x09, Arg0)
                            }
                        }
                    }

                    If (LAnd (LLessEqual (Arg0, 0x0D), LGreaterEqual (Arg0, 0x0A)))
                    {
                        WX82 (Arg0, Arg1)
                    }
                }

                Method (WX82, 2, NotSerialized)
                {
                    ShiftLeft (One, Arg0, Local0)
                    If (Arg1)
                    {
                        Or (LPCE, Local0, LPCE)
                    }
                    Else
                    {
                        Not (Local0, Local0)
                        And (LPCE, Local0, LPCE)
                    }
                }

                Method (RDMA, 3, NotSerialized)
                {
                }

                Device (FWH)
                {
                    Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y10)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y11)
                    })
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y10._BAS, BS00)  // _BAS: Base Address
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y10._LEN, BL00)  // _LEN: Length
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y11._BAS, BS10)  // _BAS: Base Address
                    CreateDWordField (CRS, \_SB.PCI0.SBRG.FWH._Y11._LEN, BL10)  // _LEN: Length
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Store (0xFF800000, Local0)
                        FindSetRightBit (FHD0, Local1)
                        Decrement (Local1)
                        If (Local1)
                        {
                            Multiply (Local1, 0x00080000, Local1)
                        }

                        Add (Local0, Local1, Local2)
                        Store (Local2, BS00)
                        Add (BS00, 0x00400000, BS10)
                        Subtract (Zero, BS10, BL00)
                        Store (BL00, BL10)
                        Return (CRS)
                    }
                }

                Device (FWHE)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y12)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.FWHE._Y12._BAS, BS00)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.SBRG.FWHE._Y12._LEN, BL00)  // _LEN: Length
                        If (LEqual (^^FWH.BS00, Zero))
                        {
                            ^^FWH._CRS ()
                        }

                        Add (^^FWH.BS00, ^^FWH.BL00, BS00)
                        Subtract (^^FWH.BS10, BS00, BL00)
                        Return (CRS)
                    }
                }

                OperationRegion (FHR0, PCI_Config, 0xD8, 0x02)
                Field (FHR0, ByteAcc, NoLock, Preserve)
                {
                    FHD1,   4, 
                    Offset (0x01), 
                    FHD0,   8
                }

                Device (^PCIE)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x11)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            _Y13)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y13._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.PCIE._Y13._LEN, LEN1)  // _LEN: Length
                        Store (PCIB, BAS1)
                        Store (PCIL, LEN1)
                        Return (CRS)
                    }
                }

                Scope (\_GPE)
                {
                    Method (_L1A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
                    {
                        Notify (\_SB.PCI0.SBRG.ASOC, One)
                        Sleep (0x03E8)
                    }
                }

                Scope (ASOC)
                {
                    Name (VESL, Zero)
                    Method (SPLV, 1, Serialized)
                    {
                        And (Arg0, 0xFFFF, VESL)
                        Store (VESL, PAR0)
                        ISMI (0x88)
                        Store (And (PAR0, 0xFFFF), Local0)
                        Return (Local0)
                    }

                    Method (GPLV, 0, Serialized)
                    {
                        Return (VESL)
                    }
                }

                Device (OMSC)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y14)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y15)
                    })
                    Name (CRS1, ResourceTemplate ()
                    {
                        FixedIO (
                            0x0060,             // Address
                            0x01,               // Length
                            )
                        FixedIO (
                            0x0064,             // Address
                            0x01,               // Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y16)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y17)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (APIC)
                        {
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y14._LEN, ML01)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y14._BAS, MB01)  // _BAS: Base Address
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y15._LEN, ML02)  // _LEN: Length
                            CreateDWordField (CRS, \_SB.PCI0.SBRG.OMSC._Y15._BAS, MB02)  // _BAS: Base Address
                            Store (0xFEC00000, MB01)
                            Store (0x1000, ML01)
                            Store (0xFEE00000, MB02)
                            Store (0x1000, ML02)
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y16._LEN, ML03)  // _LEN: Length
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y16._BAS, MB03)  // _BAS: Base Address
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y17._LEN, ML04)  // _LEN: Length
                            CreateDWordField (CRS1, \_SB.PCI0.SBRG.OMSC._Y17._BAS, MB04)  // _BAS: Base Address
                            Store (0xFEC00000, MB03)
                            Store (0x1000, ML03)
                            Store (0xFEE00000, MB04)
                            Store (0x1000, ML04)
                        }

                        ShiftLeft (0x05, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (CRS)
                        }
                        Else
                        {
                            Return (CRS1)
                        }
                    }
                }

                Device (^^RMEM)
                {
                    Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x000A0000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y18)
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            _Y19)
                        Memory32Fixed (ReadWrite,
                            0x00100000,         // Address Base
                            0x00000000,         // Address Length
                            _Y1A)
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y1B)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.RMEM._Y18._BAS, BAS1)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y18._LEN, LEN1)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y19._BAS, BAS2)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y19._LEN, LEN2)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y1A._LEN, LEN3)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.RMEM._Y1B._BAS, BAS4)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.RMEM._Y1B._LEN, LEN4)  // _LEN: Length
                        If (OSFL ()) {}
                        Else
                        {
                            If (MG1B)
                            {
                                If (LGreater (MG1B, 0x000C0000))
                                {
                                    Store (0x000C0000, BAS1)
                                    Subtract (MG1B, BAS1, LEN1)
                                }
                            }
                            Else
                            {
                                Store (0x000C0000, BAS1)
                                Store (0x00020000, LEN1)
                            }

                            If (Add (MG1B, MG1L, Local0))
                            {
                                Store (Local0, BAS2)
                                Subtract (0x00100000, BAS2, LEN2)
                            }
                        }

                        Subtract (MG2B, 0x00100000, LEN3)
                        Store (MH1B, BAS4)
                        Subtract (Zero, BAS4, LEN4)
                        Return (CRS)
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP030B"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Method (PS2K._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1D, 0x04))
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F03"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13"))  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        ShiftLeft (One, 0x0C, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    Name (M2R0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Name (M2R1, ResourceTemplate ()
                    {
                        FixedIO (
                            0x0060,             // Address
                            0x01,               // Length
                            )
                        FixedIO (
                            0x0064,             // Address
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {12}
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        ShiftLeft (One, 0x0A, Local0)
                        If (And (IOST, Local0))
                        {
                            Return (M2R0)
                        }
                        Else
                        {
                            Return (M2R1)
                        }
                    }
                }

                Method (PS2M._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x1D, 0x04))
                }
            }

            Device (USB0)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x03, 0x04))
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x04, 0x04))
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0C, 0x04))
                }
            }

            Device (USB5)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x20, 0x04))
                }
            }

            Device (EUSB)
            {
                Name (_ADR, 0x001D0007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0E, 0x04))
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x05, 0x04))
                }
            }

            Device (USB6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    If (LOr (LEqual (OSFL (), One), LEqual (OSFL (), 0x02)))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (0x03)
                    }
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x20, 0x04))
                }
            }

            Device (USBE)
            {
                Name (_ADR, 0x001A0007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (P0P4)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (P0P5)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR05)
                    }

                    Return (PR05)
                }
            }

            Device (P0P6)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR06)
                    }

                    Return (PR06)
                }
            }

            Device (P0P7)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR07)
                    }

                    Return (PR07)
                }
            }

            Device (P0P8)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR08)
                    }

                    Return (PR08)
                }

                Device (JMF0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (PIOT, Package (0x05)
                    {
                        0x0258, 
                        0x0186, 
                        0x014A, 
                        0xB4, 
                        0x78
                    })
                    Name (UDMA, Package (0x07)
                    {
                        0x78, 
                        0x50, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14, 
                        0x0F
                    })
                    Name (MDMA, Package (0x03)
                    {
                        0x01E0, 
                        0x96, 
                        0x78
                    })
                    OperationRegion (CF40, PCI_Config, 0x40, 0x04)
                    Field (CF40, ByteAcc, NoLock, Preserve)
                    {
                            ,   3, 
                        CAB0,   1, 
                            ,   18, 
                        SWAP,   1, 
                        CHN0,   1, 
                        Offset (0x04)
                    }

                    OperationRegion (CF80, PCI_Config, 0x80, 0x04)
                    Field (CF80, ByteAcc, NoLock, Preserve)
                    {
                            ,   19, 
                        CAB1,   1, 
                        Offset (0x03), 
                        CHN1,   1, 
                        Offset (0x04)
                    }

                    Name (IDEB, Buffer (0x14) {})
                    CreateDWordField (IDEB, Zero, GTM0)
                    CreateDWordField (IDEB, 0x04, GTM1)
                    CreateDWordField (IDEB, 0x08, GTM2)
                    CreateDWordField (IDEB, 0x0C, GTM3)
                    CreateDWordField (IDEB, 0x10, GTM4)
                    Name (PMIO, 0x04)
                    Name (PMDM, 0x06)
                    Name (PSIO, 0x04)
                    Name (PSDM, 0x06)
                    Name (SMIO, 0x04)
                    Name (SMDM, 0x06)
                    Name (SSIO, 0x04)
                    Name (SSDM, 0x06)
                    Name (MODP, 0x05)
                    Name (MODS, 0x05)
                    Device (SDE0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                        {
                            Store (DerefOf (Index (PIOT, PMIO)), Local0)
                            Store (DerefOf (Index (PIOT, PSIO)), Local2)
                            Store (0x1A, Local4)
                            If (LAnd (MODP, One))
                            {
                                Store (DerefOf (Index (UDMA, PMDM)), Local1)
                                If (LGreater (PMDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, PMDM)
                                            Store (DerefOf (Index (UDMA, PMDM)), Local1)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, PMDM)
                                            Store (DerefOf (Index (UDMA, PMDM)), Local1)
                                        }
                                    }
                                }

                                Or (Local4, One, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, PMDM)), Local1)
                            }

                            If (LAnd (MODP, 0x04))
                            {
                                Store (DerefOf (Index (UDMA, PSDM)), Local3)
                                If (LGreater (PSDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, PSDM)
                                            Store (DerefOf (Index (UDMA, PSDM)), Local3)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, PSDM)
                                            Store (DerefOf (Index (UDMA, PSDM)), Local3)
                                        }
                                    }
                                }

                                Or (Local4, 0x04, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, PSDM)), Local3)
                            }

                            Store (Local0, GTM0)
                            Store (Local1, GTM1)
                            Store (Local2, GTM2)
                            Store (Local3, GTM3)
                            Store (Local4, GTM4)
                            Return (IDEB)
                        }

                        Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                        {
                            Store (Arg0, IDEB)
                            Store (GTM0, Local0)
                            Store (GTM1, Local1)
                            Store (GTM2, Local2)
                            Store (GTM3, Local3)
                            Store (GTM4, Local4)
                            If (LAnd (LNotEqual (Local0, Ones), LNotEqual (Local0, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local0, MTR, Zero, Zero), PMIO)
                            }

                            If (LAnd (LNotEqual (Local1, Ones), LNotEqual (Local1, Zero)))
                            {
                                If (LAnd (Local4, One))
                                {
                                    Store (Match (UDMA, MEQ, Local1, MTR, Zero, Zero), PMDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local1, MTR, Zero, Zero), PMDM)
                                }
                            }

                            If (LAnd (LNotEqual (Local2, Ones), LNotEqual (Local2, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local2, MTR, Zero, Zero), PSIO)
                            }

                            If (LAnd (LNotEqual (Local3, Ones), LNotEqual (Local3, Zero)))
                            {
                                If (LAnd (Local4, 0x04))
                                {
                                    Store (Match (UDMA, MEQ, Local3, MTR, Zero, Zero), PSDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local3, MTR, Zero, Zero), PSDM)
                                }
                            }

                            Store (Local4, MODP)
                        }

                        Device (DRV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (PMIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (PMDM, DMAM)
                                If (LAnd (MODP, One))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }

                        Device (DRV1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (PSIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (PSDM, DMAM)
                                If (LAnd (MODP, 0x04))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }
                    }

                    Device (SDE1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                        {
                            Store (DerefOf (Index (PIOT, SMIO)), Local0)
                            Store (DerefOf (Index (PIOT, SSIO)), Local2)
                            Store (0x1A, Local4)
                            If (LAnd (MODS, One))
                            {
                                Store (DerefOf (Index (UDMA, SMDM)), Local1)
                                If (LGreater (SMDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, SMDM)
                                            Store (DerefOf (Index (UDMA, SMDM)), Local1)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, SMDM)
                                            Store (DerefOf (Index (UDMA, SMDM)), Local1)
                                        }
                                    }
                                }

                                Or (Local4, One, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, SMDM)), Local1)
                            }

                            If (LAnd (MODS, 0x04))
                            {
                                Store (DerefOf (Index (UDMA, SSDM)), Local3)
                                If (LGreater (SSDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, SSDM)
                                            Store (DerefOf (Index (UDMA, SSDM)), Local3)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, SSDM)
                                            Store (DerefOf (Index (UDMA, SSDM)), Local3)
                                        }
                                    }
                                }

                                Or (Local4, 0x04, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, SSDM)), Local3)
                            }

                            Store (Local0, GTM0)
                            Store (Local1, GTM1)
                            Store (Local2, GTM2)
                            Store (Local3, GTM3)
                            Store (Local4, GTM4)
                            Return (IDEB)
                        }

                        Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                        {
                            Store (Arg0, IDEB)
                            Store (GTM0, Local0)
                            Store (GTM1, Local1)
                            Store (GTM2, Local2)
                            Store (GTM3, Local3)
                            Store (GTM4, Local4)
                            If (LAnd (LNotEqual (Local0, Ones), LNotEqual (Local0, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local0, MTR, Zero, Zero), SMIO)
                            }

                            If (LAnd (LNotEqual (Local1, Ones), LNotEqual (Local1, Zero)))
                            {
                                If (LAnd (Local4, One))
                                {
                                    Store (Match (UDMA, MEQ, Local1, MTR, Zero, Zero), SMDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local1, MTR, Zero, Zero), SMDM)
                                }
                            }

                            If (LAnd (LNotEqual (Local2, Ones), LNotEqual (Local2, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local2, MTR, Zero, Zero), SSIO)
                            }

                            If (LAnd (LNotEqual (Local3, Ones), LNotEqual (Local3, Zero)))
                            {
                                If (LAnd (Local4, 0x04))
                                {
                                    Store (Match (UDMA, MEQ, Local3, MTR, Zero, Zero), SSDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local3, MTR, Zero, Zero), SSDM)
                                }
                            }

                            Store (Local4, MODS)
                        }

                        Device (DRV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (SMIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (SMDM, DMAM)
                                If (LAnd (MODS, One))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }

                        Device (DRV1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (SSIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (SSDM, DMAM)
                                If (LAnd (MODS, 0x04))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }
                    }
                }

                Device (JMF1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (PIOT, Package (0x05)
                    {
                        0x0258, 
                        0x0186, 
                        0x014A, 
                        0xB4, 
                        0x78
                    })
                    Name (UDMA, Package (0x07)
                    {
                        0x78, 
                        0x50, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14, 
                        0x0F
                    })
                    Name (MDMA, Package (0x03)
                    {
                        0x01E0, 
                        0x96, 
                        0x78
                    })
                    OperationRegion (CF40, PCI_Config, 0x40, 0x04)
                    Field (CF40, ByteAcc, NoLock, Preserve)
                    {
                            ,   3, 
                        CAB0,   1, 
                            ,   18, 
                        SWAP,   1, 
                        CHN0,   1, 
                        Offset (0x04)
                    }

                    OperationRegion (CF80, PCI_Config, 0x80, 0x04)
                    Field (CF80, ByteAcc, NoLock, Preserve)
                    {
                            ,   19, 
                        CAB1,   1, 
                        Offset (0x03), 
                        CHN1,   1, 
                        Offset (0x04)
                    }

                    Name (IDEB, Buffer (0x14) {})
                    CreateDWordField (IDEB, Zero, GTM0)
                    CreateDWordField (IDEB, 0x04, GTM1)
                    CreateDWordField (IDEB, 0x08, GTM2)
                    CreateDWordField (IDEB, 0x0C, GTM3)
                    CreateDWordField (IDEB, 0x10, GTM4)
                    Name (PMIO, 0x04)
                    Name (PMDM, 0x06)
                    Name (PSIO, 0x04)
                    Name (PSDM, 0x06)
                    Name (SMIO, 0x04)
                    Name (SMDM, 0x06)
                    Name (SSIO, 0x04)
                    Name (SSDM, 0x06)
                    Name (MODP, 0x05)
                    Name (MODS, 0x05)
                    Device (SDE0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                        {
                            Store (DerefOf (Index (PIOT, PMIO)), Local0)
                            Store (DerefOf (Index (PIOT, PSIO)), Local2)
                            Store (0x1A, Local4)
                            If (LAnd (MODP, One))
                            {
                                Store (DerefOf (Index (UDMA, PMDM)), Local1)
                                If (LGreater (PMDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, PMDM)
                                            Store (DerefOf (Index (UDMA, PMDM)), Local1)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, PMDM)
                                            Store (DerefOf (Index (UDMA, PMDM)), Local1)
                                        }
                                    }
                                }

                                Or (Local4, One, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, PMDM)), Local1)
                            }

                            If (LAnd (MODP, 0x04))
                            {
                                Store (DerefOf (Index (UDMA, PSDM)), Local3)
                                If (LGreater (PSDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, PSDM)
                                            Store (DerefOf (Index (UDMA, PSDM)), Local3)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, PSDM)
                                            Store (DerefOf (Index (UDMA, PSDM)), Local3)
                                        }
                                    }
                                }

                                Or (Local4, 0x04, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, PSDM)), Local3)
                            }

                            Store (Local0, GTM0)
                            Store (Local1, GTM1)
                            Store (Local2, GTM2)
                            Store (Local3, GTM3)
                            Store (Local4, GTM4)
                            Return (IDEB)
                        }

                        Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                        {
                            Store (Arg0, IDEB)
                            Store (GTM0, Local0)
                            Store (GTM1, Local1)
                            Store (GTM2, Local2)
                            Store (GTM3, Local3)
                            Store (GTM4, Local4)
                            If (LAnd (LNotEqual (Local0, Ones), LNotEqual (Local0, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local0, MTR, Zero, Zero), PMIO)
                            }

                            If (LAnd (LNotEqual (Local1, Ones), LNotEqual (Local1, Zero)))
                            {
                                If (LAnd (Local4, One))
                                {
                                    Store (Match (UDMA, MEQ, Local1, MTR, Zero, Zero), PMDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local1, MTR, Zero, Zero), PMDM)
                                }
                            }

                            If (LAnd (LNotEqual (Local2, Ones), LNotEqual (Local2, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local2, MTR, Zero, Zero), PSIO)
                            }

                            If (LAnd (LNotEqual (Local3, Ones), LNotEqual (Local3, Zero)))
                            {
                                If (LAnd (Local4, 0x04))
                                {
                                    Store (Match (UDMA, MEQ, Local3, MTR, Zero, Zero), PSDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local3, MTR, Zero, Zero), PSDM)
                                }
                            }

                            Store (Local4, MODP)
                        }

                        Device (DRV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (PMIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (PMDM, DMAM)
                                If (LAnd (MODP, One))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }

                        Device (DRV1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (PSIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (PSDM, DMAM)
                                If (LAnd (MODP, 0x04))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }
                    }

                    Device (SDE1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                        {
                            Store (DerefOf (Index (PIOT, SMIO)), Local0)
                            Store (DerefOf (Index (PIOT, SSIO)), Local2)
                            Store (0x1A, Local4)
                            If (LAnd (MODS, One))
                            {
                                Store (DerefOf (Index (UDMA, SMDM)), Local1)
                                If (LGreater (SMDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, SMDM)
                                            Store (DerefOf (Index (UDMA, SMDM)), Local1)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, SMDM)
                                            Store (DerefOf (Index (UDMA, SMDM)), Local1)
                                        }
                                    }
                                }

                                Or (Local4, One, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, SMDM)), Local1)
                            }

                            If (LAnd (MODS, 0x04))
                            {
                                Store (DerefOf (Index (UDMA, SSDM)), Local3)
                                If (LGreater (SSDM, 0x02))
                                {
                                    If (LAnd (LNotEqual (SWAP, One), LEqual (CHN0, One)))
                                    {
                                        If (CAB0)
                                        {
                                            Store (0x02, SSDM)
                                            Store (DerefOf (Index (UDMA, SSDM)), Local3)
                                        }
                                    }

                                    If (LAnd (LEqual (SWAP, One), LEqual (CHN1, One)))
                                    {
                                        If (CAB1)
                                        {
                                            Store (0x02, SSDM)
                                            Store (DerefOf (Index (UDMA, SSDM)), Local3)
                                        }
                                    }
                                }

                                Or (Local4, 0x04, Local4)
                            }
                            Else
                            {
                                Store (DerefOf (Index (MDMA, SSDM)), Local3)
                            }

                            Store (Local0, GTM0)
                            Store (Local1, GTM1)
                            Store (Local2, GTM2)
                            Store (Local3, GTM3)
                            Store (Local4, GTM4)
                            Return (IDEB)
                        }

                        Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                        {
                            Store (Arg0, IDEB)
                            Store (GTM0, Local0)
                            Store (GTM1, Local1)
                            Store (GTM2, Local2)
                            Store (GTM3, Local3)
                            Store (GTM4, Local4)
                            If (LAnd (LNotEqual (Local0, Ones), LNotEqual (Local0, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local0, MTR, Zero, Zero), SMIO)
                            }

                            If (LAnd (LNotEqual (Local1, Ones), LNotEqual (Local1, Zero)))
                            {
                                If (LAnd (Local4, One))
                                {
                                    Store (Match (UDMA, MEQ, Local1, MTR, Zero, Zero), SMDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local1, MTR, Zero, Zero), SMDM)
                                }
                            }

                            If (LAnd (LNotEqual (Local2, Ones), LNotEqual (Local2, Zero)))
                            {
                                Store (Match (PIOT, MEQ, Local2, MTR, Zero, Zero), SSIO)
                            }

                            If (LAnd (LNotEqual (Local3, Ones), LNotEqual (Local3, Zero)))
                            {
                                If (LAnd (Local4, 0x04))
                                {
                                    Store (Match (UDMA, MEQ, Local3, MTR, Zero, Zero), SSDM)
                                }
                                Else
                                {
                                    Store (Match (MDMA, MEQ, Local3, MTR, Zero, Zero), SSDM)
                                }
                            }

                            Store (Local4, MODS)
                        }

                        Device (DRV0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (SMIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (SMDM, DMAM)
                                If (LAnd (MODS, One))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }

                        Device (DRV1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                            {
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local0)
                                Store (Buffer (0x07)
                                    {
                                         0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                                    }, Local1)
                                CreateByteField (Local0, One, PIOM)
                                CreateByteField (Local1, One, DMAM)
                                Store (SSIO, PIOM)
                                Or (PIOM, 0x08, PIOM)
                                Store (SSDM, DMAM)
                                If (LAnd (MODS, 0x04))
                                {
                                    Or (DMAM, 0x40, DMAM)
                                }
                                Else
                                {
                                    Or (DMAM, 0x20, DMAM)
                                }

                                Concatenate (Local0, Local1, Local2)
                                Return (Local2)
                            }
                        }
                    }
                }
            }

            Device (P0P9)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR09)
                    }

                    Return (PR09)
                }
            }

            Device (NPE1)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR11)
                    }

                    Return (PR11)
                }
            }

            Device (NPE3)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR13)
                    }

                    Return (PR13)
                }
            }

            Device (NPE7)
            {
                Name (_ADR, 0x00070000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR17)
                    }

                    Return (PR17)
                }
            }

            Device (GBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x0D, 0x04))
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (^NATA, Package (0x01)
                {
                    0x001F0002
                })
                Name (\FZTF, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5
                })
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF)
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14) {})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (PSCR, One, Local1)
                        Or (PMCR, Local1, Local0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local1)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local2)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local0)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local1)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (PMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (PMUT, GMUT)
                        Store (PMCR, GMCR)
                        Store (PSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (PSUT, GSUT)
                        Store (PSCR, GSCR)
                        STM ()
                        Store (GMPT, PMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, PMUT)
                        Store (GMCR, PMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, PSUT)
                        Store (GSCR, PSCR)
                        If (And (Local0, One))
                        {
                            Store (One, PM3E)
                        }
                        Else
                        {
                            Store (Zero, PM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, PM6E)
                        }
                        Else
                        {
                            Store (Zero, PM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, PMAE)
                        }
                        Else
                        {
                            Store (Zero, PMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, PS3E)
                        }
                        Else
                        {
                            Store (Zero, PS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, PS6E)
                        }
                        Else
                        {
                            Store (Zero, PS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, PSAE)
                        }
                        Else
                        {
                            Store (Zero, PSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA0)
                        Store (GTF (One, Arg2), ATA1)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (SSCR, One, Local1)
                        Or (SMCR, Local1, Local0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local1)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local2)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local0)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local1)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (SMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (SMUT, GMUT)
                        Store (SMCR, GMCR)
                        Store (SSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (SSUT, GSUT)
                        Store (SSCR, GSCR)
                        STM ()
                        Store (GMPT, SMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, SMUT)
                        Store (GMCR, SMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, SSUT)
                        Store (GSCR, SSCR)
                        If (And (Local0, One))
                        {
                            Store (One, SM3E)
                        }
                        Else
                        {
                            Store (Zero, SM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, SM6E)
                        }
                        Else
                        {
                            Store (Zero, SM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, SMAE)
                        }
                        Else
                        {
                            Store (Zero, SMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, SS3E)
                        }
                        Else
                        {
                            Store (Zero, SS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, SS6E)
                        }
                        Else
                        {
                            Store (Zero, SS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, SSAE)
                        }
                        Else
                        {
                            Store (Zero, SSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA2)
                        Store (GTF (One, Arg2), ATA3)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    Store (Ones, PIO0)
                    Store (Ones, PIO1)
                    Store (Ones, DMA0)
                    Store (Ones, DMA1)
                    Store (0x10, CHNF)
                    If (REGF) {}
                    Else
                    {
                        Return (TMD0)
                    }

                    If (And (Arg1, 0x20))
                    {
                        Or (CHNF, 0x02, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, One)), MEQ, Arg0, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA0)
                    Store (Local7, PIO0)
                    If (And (Arg4, 0x20))
                    {
                        Or (CHNF, 0x08, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, 0x02)), MEQ, Arg3, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA1)
                    Store (Local7, PIO1)
                    If (And (Arg1, 0x07))
                    {
                        Store (Arg2, Local5)
                        If (And (Arg1, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg1, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA0)
                        Or (CHNF, One, CHNF)
                    }

                    If (And (Arg4, 0x07))
                    {
                        Store (Arg5, Local5)
                        If (And (Arg4, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg4, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA1)
                        Or (CHNF, 0x04, CHNF)
                    }

                    Store (TMD0, Debug)
                    Return (TMD0)
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        Store (Zero, GMUE)
                        Store (Zero, GMUT)
                        Store (Zero, GSUE)
                        Store (Zero, GSUT)
                        If (And (CHNF, One))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA0, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GMUT)
                            Or (GMUE, One, GMUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GMUE, 0x02, GMUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GMUE, 0xFD, GMUE)
                                Or (GMUE, 0x04, GMUE)
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO0, Ones), LEqual (PIO0, Zero)))
                            {
                                If (And (LLess (DMA0, Ones), LGreater (DMA0, Zero)))
                                {
                                    Store (DMA0, PIO0)
                                    Or (GMUE, 0x80, GMUE)
                                }
                            }
                        }

                        If (And (CHNF, 0x04))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA1, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GSUT)
                            Or (GSUE, One, GSUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GSUE, 0x02, GSUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GSUE, 0xFD, GSUE)
                                Or (GSUE, 0x04, GSUE)
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO1, Ones), LEqual (PIO1, Zero)))
                            {
                                If (And (LLess (DMA1, Ones), LGreater (DMA1, Zero)))
                                {
                                    Store (DMA1, PIO1)
                                    Or (GSUE, 0x80, GSUE)
                                }
                            }
                        }

                        If (And (CHNF, 0x02))
                        {
                            Or (GMUE, 0x20, GMUE)
                        }

                        If (And (CHNF, 0x08))
                        {
                            Or (GSUE, 0x20, GSUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO0, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, One)), Local0)), 
                            Local1)
                        Store (Local1, GMPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GMUE, 0x50, GMUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO1, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x02)), Local0)), 
                            Local1)
                        Store (Local1, GSPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GSUE, 0x50, GSUE)
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91
                })
                Name (ATA0, Buffer (0x1D) {})
                Name (ATA1, Buffer (0x1D) {})
                Name (ATA2, Buffer (0x1D) {})
                Name (ATA3, Buffer (0x1D) {})
                Name (ATAB, Buffer (0x1D) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX)
                    Store (Arg1, A001)
                    Store (Arg2, A005)
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC)
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49)
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53)
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63)
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59)
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88)
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                        And (CHNF, 0x08, IRDY)
                        If (And (CHNF, 0x10))
                        {
                            Store (PIO1, PIOT)
                        }
                        Else
                        {
                            Store (PIO0, PIOT)
                        }

                        If (And (CHNF, 0x04))
                        {
                            If (And (CHNF, 0x10))
                            {
                                Store (DMA1, DMAT)
                            }
                            Else
                            {
                                Store (DMA0, DMAT)
                            }
                        }
                    }
                    Else
                    {
                        And (CHNF, 0x02, IRDY)
                        Store (PIO0, PIOT)
                        If (And (CHNF, One))
                        {
                            Store (DMA0, DMAT)
                        }
                    }

                    If (LAnd (LAnd (And (ID53, 0x04), And (ID88, 0xFF00
                        )), DMAT))
                    {
                        Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMAT, MTR, 
                            Zero, Zero), Local1)
                        If (LGreater (Local1, 0x05))
                        {
                            Store (0x05, Local1)
                        }

                        GTFB (AT01, Or (0x40, Local1), Local7)
                    }
                    Else
                    {
                        If (LAnd (And (ID63, 0xFF00), PIOT))
                        {
                            And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                                Zero, Zero), 0x03, Local0)
                            Or (0x20, DerefOf (Index (DerefOf (Index (TIM0, 0x07)), Local0
                                )), Local1)
                            GTFB (AT01, Local1, Local7)
                        }
                    }

                    If (IRDY)
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Or (0x08, DerefOf (Index (DerefOf (Index (TIM0, 0x06)), Local0
                            )), Local1)
                        GTFB (AT01, Local1, Local7)
                    }
                    Else
                    {
                        If (And (ID49, 0x0400))
                        {
                            GTFB (AT01, One, Local7)
                        }
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    Store (ATAB, Debug)
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (Concatenate (RETB, FZTF))
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (REGF, One)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (Arg1, REGF)
                    }
                }

                Name (TIM0, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x78, 
                        0xB4, 
                        0xF0, 
                        0x0384
                    }, 

                    Package (0x04)
                    {
                        0x23, 
                        0x21, 
                        0x10, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0B, 
                        0x09, 
                        0x04, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        0x78, 
                        0x5A, 
                        0x3C, 
                        0x28, 
                        0x1E, 
                        0x14
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        One, 
                        0x02, 
                        One, 
                        0x02, 
                        One
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        0x03, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x02, 
                        One, 
                        Zero, 
                        Zero
                    }
                })
                Name (TMD0, Buffer (0x14) {})
                CreateDWordField (TMD0, Zero, PIO0)
                CreateDWordField (TMD0, 0x04, DMA0)
                CreateDWordField (TMD0, 0x08, PIO1)
                CreateDWordField (TMD0, 0x0C, DMA1)
                CreateDWordField (TMD0, 0x10, CHNF)
                OperationRegion (CFG2, PCI_Config, 0x40, 0x20)
                Field (CFG2, DWordAcc, NoLock, Preserve)
                {
                    PMPT,   4, 
                    PSPT,   4, 
                    PMRI,   6, 
                    Offset (0x02), 
                    SMPT,   4, 
                    SSPT,   4, 
                    SMRI,   6, 
                    Offset (0x04), 
                    PSRI,   4, 
                    SSRI,   4, 
                    Offset (0x08), 
                    PM3E,   1, 
                    PS3E,   1, 
                    SM3E,   1, 
                    SS3E,   1, 
                    Offset (0x0A), 
                    PMUT,   2, 
                        ,   2, 
                    PSUT,   2, 
                    Offset (0x0B), 
                    SMUT,   2, 
                        ,   2, 
                    SSUT,   2, 
                    Offset (0x0C), 
                    Offset (0x14), 
                    PM6E,   1, 
                    PS6E,   1, 
                    SM6E,   1, 
                    SS6E,   1, 
                    PMCR,   1, 
                    PSCR,   1, 
                    SMCR,   1, 
                    SSCR,   1, 
                        ,   4, 
                    PMAE,   1, 
                    PSAE,   1, 
                    SMAE,   1, 
                    SSAE,   1
                }

                Name (GMPT, Zero)
                Name (GMUE, Zero)
                Name (GMUT, Zero)
                Name (GMCR, Zero)
                Name (GSPT, Zero)
                Name (GSUE, Zero)
                Name (GSUT, Zero)
                Name (GSCR, Zero)
                Device (CHN0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (PSCR, One, Local1)
                        Or (PMCR, Local1, Local0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local1)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local2)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (PMRI, Local1, PMUT, PSRI, Local2, PSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (PMAE, 0x02, Local3)
                        ShiftLeft (PM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PM3E, Local3, Local0)
                        ShiftLeft (PMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (PSAE, 0x02, Local3)
                        ShiftLeft (PS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (PS3E, Local3, Local1)
                        ShiftLeft (PSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (PMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (PMUT, GMUT)
                        Store (PMCR, GMCR)
                        Store (PSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (PSUT, GSUT)
                        Store (PSCR, GSCR)
                        STM ()
                        Store (GMPT, PMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, PMUT)
                        Store (GMCR, PMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, PSUT)
                        Store (GSCR, PSCR)
                        If (And (Local0, One))
                        {
                            Store (One, PM3E)
                        }
                        Else
                        {
                            Store (Zero, PM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, PM6E)
                        }
                        Else
                        {
                            Store (Zero, PM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, PMAE)
                        }
                        Else
                        {
                            Store (Zero, PMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, PS3E)
                        }
                        Else
                        {
                            Store (Zero, PS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, PS6E)
                        }
                        Else
                        {
                            Store (Zero, PS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, PSAE)
                        }
                        Else
                        {
                            Store (Zero, PSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA0)
                        Store (GTF (One, Arg2), ATA1)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA0))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA1))
                        }
                    }
                }

                Device (CHN1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        ShiftLeft (SSCR, One, Local1)
                        Or (SMCR, Local1, Local0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local1)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local2)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local2, Local3, Local2)
                        Return (GTM (SMRI, Local1, SMUT, SSRI, Local2, SSUT, Local0))
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        Store (Arg0, Debug)
                        Store (Arg0, TMD0)
                        ShiftLeft (SMAE, 0x02, Local3)
                        ShiftLeft (SM6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SM3E, Local3, Local0)
                        ShiftLeft (SMPT, 0x04, Local3)
                        Or (Local0, Local3, Local0)
                        ShiftLeft (SSAE, 0x02, Local3)
                        ShiftLeft (SS6E, One, Local4)
                        Or (Local3, Local4, Local3)
                        Or (SS3E, Local3, Local1)
                        ShiftLeft (SSPT, 0x04, Local3)
                        Or (Local1, Local3, Local1)
                        Store (SMRI, GMPT)
                        Store (Local0, GMUE)
                        Store (SMUT, GMUT)
                        Store (SMCR, GMCR)
                        Store (SSRI, GSPT)
                        Store (Local1, GSUE)
                        Store (SSUT, GSUT)
                        Store (SSCR, GSCR)
                        STM ()
                        Store (GMPT, SMRI)
                        Store (GMUE, Local0)
                        Store (GMUT, SMUT)
                        Store (GMCR, SMCR)
                        Store (GSUE, Local1)
                        Store (GSUT, SSUT)
                        Store (GSCR, SSCR)
                        If (And (Local0, One))
                        {
                            Store (One, SM3E)
                        }
                        Else
                        {
                            Store (Zero, SM3E)
                        }

                        If (And (Local0, 0x02))
                        {
                            Store (One, SM6E)
                        }
                        Else
                        {
                            Store (Zero, SM6E)
                        }

                        If (And (Local0, 0x04))
                        {
                            Store (One, SMAE)
                        }
                        Else
                        {
                            Store (Zero, SMAE)
                        }

                        If (And (Local1, One))
                        {
                            Store (One, SS3E)
                        }
                        Else
                        {
                            Store (Zero, SS3E)
                        }

                        If (And (Local1, 0x02))
                        {
                            Store (One, SS6E)
                        }
                        Else
                        {
                            Store (Zero, SS6E)
                        }

                        If (And (Local1, 0x04))
                        {
                            Store (One, SSAE)
                        }
                        Else
                        {
                            Store (Zero, SSAE)
                        }

                        Store (GTF (Zero, Arg1), ATA2)
                        Store (GTF (One, Arg2), ATA3)
                    }

                    Device (DRV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA2))
                        }
                    }

                    Device (DRV1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Return (RATA (ATA3))
                        }
                    }
                }

                Method (GTM, 7, Serialized)
                {
                    Store (Ones, PIO0)
                    Store (Ones, PIO1)
                    Store (Ones, DMA0)
                    Store (Ones, DMA1)
                    Store (0x10, CHNF)
                    If (REGF) {}
                    Else
                    {
                        Return (TMD0)
                    }

                    If (And (Arg1, 0x20))
                    {
                        Or (CHNF, 0x02, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, One)), MEQ, Arg0, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA0)
                    Store (Local7, PIO0)
                    If (And (Arg4, 0x20))
                    {
                        Or (CHNF, 0x08, CHNF)
                    }

                    Store (Match (DerefOf (Index (TIM0, 0x02)), MEQ, Arg3, MTR, 
                        Zero, Zero), Local6)
                    Store (DerefOf (Index (DerefOf (Index (TIM0, Zero)), Local6)), 
                        Local7)
                    Store (Local7, DMA1)
                    Store (Local7, PIO1)
                    If (And (Arg1, 0x07))
                    {
                        Store (Arg2, Local5)
                        If (And (Arg1, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg1, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA0)
                        Or (CHNF, One, CHNF)
                    }

                    If (And (Arg4, 0x07))
                    {
                        Store (Arg5, Local5)
                        If (And (Arg4, 0x02))
                        {
                            Add (Local5, 0x02, Local5)
                        }

                        If (And (Arg4, 0x04))
                        {
                            Add (Local5, 0x04, Local5)
                        }

                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x03)), Local5)), 
                            DMA1)
                        Or (CHNF, 0x04, CHNF)
                    }

                    Store (TMD0, Debug)
                    Return (TMD0)
                }

                Method (STM, 0, Serialized)
                {
                    If (REGF)
                    {
                        Store (Zero, GMUE)
                        Store (Zero, GMUT)
                        Store (Zero, GSUE)
                        Store (Zero, GSUT)
                        If (And (CHNF, One))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA0, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GMUT)
                            Or (GMUE, One, GMUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GMUE, 0x02, GMUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GMUE, 0xFD, GMUE)
                                Or (GMUE, 0x04, GMUE)
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO0, Ones), LEqual (PIO0, Zero)))
                            {
                                If (And (LLess (DMA0, Ones), LGreater (DMA0, Zero)))
                                {
                                    Store (DMA0, PIO0)
                                    Or (GMUE, 0x80, GMUE)
                                }
                            }
                        }

                        If (And (CHNF, 0x04))
                        {
                            Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMA1, MTR, 
                                Zero, Zero), Local0)
                            If (LGreater (Local0, 0x05))
                            {
                                Store (0x05, Local0)
                            }

                            Store (DerefOf (Index (DerefOf (Index (TIM0, 0x04)), Local0)), 
                                GSUT)
                            Or (GSUE, One, GSUE)
                            If (LGreater (Local0, 0x02))
                            {
                                Or (GSUE, 0x02, GSUE)
                            }

                            If (LGreater (Local0, 0x04))
                            {
                                And (GSUE, 0xFD, GSUE)
                                Or (GSUE, 0x04, GSUE)
                            }
                        }
                        Else
                        {
                            If (Or (LEqual (PIO1, Ones), LEqual (PIO1, Zero)))
                            {
                                If (And (LLess (DMA1, Ones), LGreater (DMA1, Zero)))
                                {
                                    Store (DMA1, PIO1)
                                    Or (GSUE, 0x80, GSUE)
                                }
                            }
                        }

                        If (And (CHNF, 0x02))
                        {
                            Or (GMUE, 0x20, GMUE)
                        }

                        If (And (CHNF, 0x08))
                        {
                            Or (GSUE, 0x20, GSUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO0, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, One)), Local0)), 
                            Local1)
                        Store (Local1, GMPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GMUE, 0x50, GMUE)
                        }

                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIO1, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Store (DerefOf (Index (DerefOf (Index (TIM0, 0x02)), Local0)), 
                            Local1)
                        Store (Local1, GSPT)
                        If (LLess (Local0, 0x03))
                        {
                            Or (GSUE, 0x50, GSUE)
                        }
                    }
                }

                Name (AT01, Buffer (0x07)
                {
                     0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEF
                })
                Name (AT02, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90
                })
                Name (AT03, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC6
                })
                Name (AT04, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91
                })
                Name (ATA0, Buffer (0x1D) {})
                Name (ATA1, Buffer (0x1D) {})
                Name (ATA2, Buffer (0x1D) {})
                Name (ATA3, Buffer (0x1D) {})
                Name (ATAB, Buffer (0x1D) {})
                CreateByteField (ATAB, Zero, CMDC)
                Method (GTFB, 3, Serialized)
                {
                    Multiply (CMDC, 0x38, Local0)
                    Add (Local0, 0x08, Local1)
                    CreateField (ATAB, Local1, 0x38, CMDX)
                    Multiply (CMDC, 0x07, Local0)
                    CreateByteField (ATAB, Add (Local0, 0x02), A001)
                    CreateByteField (ATAB, Add (Local0, 0x06), A005)
                    Store (Arg0, CMDX)
                    Store (Arg1, A001)
                    Store (Arg2, A005)
                    Increment (CMDC)
                }

                Method (GTF, 2, Serialized)
                {
                    Store (Arg1, Debug)
                    Store (Zero, CMDC)
                    Name (ID49, 0x0C00)
                    Name (ID59, Zero)
                    Name (ID53, 0x04)
                    Name (ID63, 0x0F00)
                    Name (ID88, 0x0F00)
                    Name (IRDY, One)
                    Name (PIOT, Zero)
                    Name (DMAT, Zero)
                    If (LEqual (SizeOf (Arg1), 0x0200))
                    {
                        CreateWordField (Arg1, 0x62, IW49)
                        Store (IW49, ID49)
                        CreateWordField (Arg1, 0x6A, IW53)
                        Store (IW53, ID53)
                        CreateWordField (Arg1, 0x7E, IW63)
                        Store (IW63, ID63)
                        CreateWordField (Arg1, 0x76, IW59)
                        Store (IW59, ID59)
                        CreateWordField (Arg1, 0xB0, IW88)
                        Store (IW88, ID88)
                    }

                    Store (0xA0, Local7)
                    If (Arg0)
                    {
                        Store (0xB0, Local7)
                        And (CHNF, 0x08, IRDY)
                        If (And (CHNF, 0x10))
                        {
                            Store (PIO1, PIOT)
                        }
                        Else
                        {
                            Store (PIO0, PIOT)
                        }

                        If (And (CHNF, 0x04))
                        {
                            If (And (CHNF, 0x10))
                            {
                                Store (DMA1, DMAT)
                            }
                            Else
                            {
                                Store (DMA0, DMAT)
                            }
                        }
                    }
                    Else
                    {
                        And (CHNF, 0x02, IRDY)
                        Store (PIO0, PIOT)
                        If (And (CHNF, One))
                        {
                            Store (DMA0, DMAT)
                        }
                    }

                    If (LAnd (LAnd (And (ID53, 0x04), And (ID88, 0xFF00
                        )), DMAT))
                    {
                        Store (Match (DerefOf (Index (TIM0, 0x03)), MLE, DMAT, MTR, 
                            Zero, Zero), Local1)
                        If (LGreater (Local1, 0x05))
                        {
                            Store (0x05, Local1)
                        }

                        GTFB (AT01, Or (0x40, Local1), Local7)
                    }
                    Else
                    {
                        If (LAnd (And (ID63, 0xFF00), PIOT))
                        {
                            And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                                Zero, Zero), 0x03, Local0)
                            Or (0x20, DerefOf (Index (DerefOf (Index (TIM0, 0x07)), Local0
                                )), Local1)
                            GTFB (AT01, Local1, Local7)
                        }
                    }

                    If (IRDY)
                    {
                        And (Match (DerefOf (Index (TIM0, Zero)), MGE, PIOT, MTR, 
                            Zero, Zero), 0x07, Local0)
                        Or (0x08, DerefOf (Index (DerefOf (Index (TIM0, 0x06)), Local0
                            )), Local1)
                        GTFB (AT01, Local1, Local7)
                    }
                    Else
                    {
                        If (And (ID49, 0x0400))
                        {
                            GTFB (AT01, One, Local7)
                        }
                    }

                    If (LAnd (And (ID59, 0x0100), And (ID59, 0xFF)))
                    {
                        GTFB (AT03, And (ID59, 0xFF), Local7)
                    }

                    Store (ATAB, Debug)
                    Return (ATAB)
                }

                Method (RATA, 1, NotSerialized)
                {
                    CreateByteField (Arg0, Zero, CMDN)
                    Multiply (CMDN, 0x38, Local0)
                    CreateField (Arg0, 0x08, Local0, RETB)
                    Store (RETB, Debug)
                    Return (Concatenate (RETB, FZTF))
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.NPE2, 0x02)
                Notify (\_SB.PCI0.NPE4, 0x02)
                Notify (\_SB.PCI0.NPE5, 0x02)
                Notify (\_SB.PCI0.NPE6, 0x02)
                Notify (\_SB.PCI0.NPE8, 0x02)
                Notify (\_SB.PCI0.NPE9, 0x02)
                Notify (\_SB.PCI0.NPEA, 0x02)
                Notify (\_SB.PCI0.P0P4, 0x02)
                Notify (\_SB.PCI0.P0P5, 0x02)
                Notify (\_SB.PCI0.P0P6, 0x02)
                Notify (\_SB.PCI0.P0P7, 0x02)
                Notify (\_SB.PCI0.P0P8, 0x02)
                Notify (\_SB.PCI0.P0P9, 0x02)
                Notify (\_SB.PCI0.NPE1, 0x02)
                Notify (\_SB.PCI0.NPE3, 0x02)
                Notify (\_SB.PCI0.NPE7, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.P0P1, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                \_SB.PCI0.SBRG.SIOH ()
            }

            Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB0, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB1, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB2, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB5, 0x02)
                Notify (\_SB.PCI0.USB6, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.EUSB, 0x02)
                Notify (\_SB.PCI0.USBE, 0x02)
                Notify (\_SB.PCI0.GBE, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB3, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }

            Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Notify (\_SB.PCI0.USB4, 0x02)
                Notify (\_SB.PWRB, 0x02)
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G0T3, Package (0x07)
        {
            0x00070005, 
            "New CPU Installed", 
            One, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (GRP0, Package (0x01)
        {
            G0T3
        })
        Method (GIT0, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, 0x05))
            {
                Store (GNVS (0x17BF), ASB1)
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }

        Method (SIT0, 3, NotSerialized)
        {
            If (And (Arg2, 0xFFFF))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (And (Arg0, 0xFFFF), _T_0)
                If (LEqual (_T_0, 0x05))
                {
                    SNVS (0x17BF, Arg1)
                    Store (0x03, ASB0)
                }
                Else
                {
                    Store (Zero, ASB0)
                }
            }
            Else
            {
                Store (0x03, ASB0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G3U0, Package (0x09)
        {
            0x03860000, 
            "Uncore Clock Ratio", 
            Zero, 
            Zero, 
            0x0C, 
            One, 
            0x1F, 
            One, 
            "Auto"
        })
        Name (G3Q0, Package (0x09)
        {
            0x03080001, 
            "QPI Frequency", 
            Zero, 
            Zero, 
            0x04, 
            "Auto", 
            "4.800GT", 
            "5.866GT", 
            "6.400GT"
        })
        Name (G3C0, Package (0x07)
        {
            0x03010011, 
            "BCLK Frequency", 
            Zero, 
            0x21, 
            0x2710, 
            0x64, 
            0x97
        })
        Name (G3C1, Package (0x07)
        {
            0x03020012, 
            "CPU Voltage", 
            Zero, 
            0x30, 
            0xFE014C08, 
            0x0271, 
            0x89
        })
        Name (G3C2, Package (0x07)
        {
            0x03060013, 
            "CPU Ratio", 
            Zero, 
            Zero, 
            0x06, 
            One, 
            0x1C
        })
        Name (G3C3, Package (0x07)
        {
            0x03020015, 
            "QPI/DRAM Core Volt", 
            Zero, 
            Zero, 
            0xFE01D4C0, 
            0x0271, 
            0x51
        })
        Name (G3C4, Package (0x07)
        {
            0x03020016, 
            "CPU PLL", 
            Zero, 
            Zero, 
            0x0708, 
            0x14, 
            0x24
        })
        Name (G3D1, Package (0x0B)
        {
            0x03080031, 
            "DRAM Frequency", 
            Zero, 
            Zero, 
            0x06, 
            "Auto", 
            "800 MHz", 
            "1066 MHz", 
            "1333 MHz", 
            "1600 MHz", 
            "1866 MHz"
        })
        Name (G3D2, Package (0x07)
        {
            0x03020032, 
            "DRAM Bus Voltage", 
            Zero, 
            Zero, 
            0x05DC, 
            0x14, 
            0x15
        })
        Name (G3D4, Package (0x07)
        {
            0x030C0034, 
            "CHA DATA", 
            Zero, 
            0x15, 
            0x018B, 
            0x05, 
            0x30
        })
        Name (G3D5, Package (0x07)
        {
            0x030C0035, 
            "CHA CTRL", 
            Zero, 
            0x15, 
            0x018B, 
            0x05, 
            0x30
        })
        Name (G3D6, Package (0x07)
        {
            0x030C0036, 
            "CHB DATA", 
            Zero, 
            0x15, 
            0x018B, 
            0x05, 
            0x30
        })
        Name (G3D7, Package (0x07)
        {
            0x030C0037, 
            "CHB CTRL", 
            Zero, 
            0x15, 
            0x018B, 
            0x05, 
            0x30
        })
        Name (G3D8, Package (0x07)
        {
            0x030C0038, 
            "CHC DATA", 
            Zero, 
            0x15, 
            0x018B, 
            0x05, 
            0x30
        })
        Name (G3D9, Package (0x07)
        {
            0x030C0039, 
            "CHC CTRL", 
            Zero, 
            0x15, 
            0x018B, 
            0x05, 
            0x30
        })
        Name (G3S0, Package (0x07)
        {
            0x030200B1, 
            "ICH", 
            Zero, 
            Zero, 
            0x044C, 
            0x64, 
            0x04
        })
        Name (G3S1, Package (0x07)
        {
            0x030200B3, 
            "ICH PCIE", 
            Zero, 
            Zero, 
            0x05DC, 
            0x64, 
            0x04
        })
        Name (G3N0, Package (0x07)
        {
            0x030200B2, 
            "IOH", 
            Zero, 
            Zero, 
            0x044C, 
            0x14, 
            0x1F
        })
        Name (G3N1, Package (0x07)
        {
            0x030200B4, 
            "IOH PCIE", 
            Zero, 
            Zero, 
            0x05DC, 
            0x14, 
            0x40
        })
        Name (G3DS, Package (0x07)
        {
            0x030600F0, 
            "Device Select", 
            0x40000000, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRP3, Package (0x11)
        {
            G3C0, 
            G3C1, 
            G3C2, 
            G3C3, 
            G3C4, 
            G3D2, 
            G3D4, 
            G3D5, 
            G3D6, 
            G3D7, 
            G3D8, 
            G3D9, 
            G3S0, 
            G3S1, 
            G3N0, 
            G3N1, 
            G3DS
        })
        Name (GODS, Zero)
        Name (ITAD, 0x37)
        Name (DVMS, Zero)
        Name (TBRT, Buffer (0x08)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Name (TBMK, Buffer (0x08)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Name (CVIO, Zero)
        Name (CHRF, Buffer (0x06)
        {
             0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
        })
        Method (GIT3, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Store (GNVS (0x53D0), ASB1)
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    Store (GNVS (0x3401), ASB1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x11))
                    {
                        Store (RBLK (0xD2, Zero, 0x21), CLKR)
                        CreateByteField (CLKR, Zero, CB00)
                        CreateByteField (CLKR, 0x0B, CBBM)
                        CreateByteField (CLKR, 0x0C, CBBN)
                        CreateByteField (CLKR, 0x1D, CB29)
                        And (CBBM, 0x3F, Local0)
                        Store (CBBN, Local1)
                        Or (ShiftLeft (Local1, 0x03, Local2), ShiftLeft (ShiftRight (CBBM, 0x06, Local2), 
                            One, Local2), Local1)
                        Multiply (0x0598, Local1, Local4)
                        Divide (Local4, 0x64, Local5, Local3)
                        Divide (Local3, Local0, Local5, Local3)
                        Store (DerefOf (Index (G3TB, And (CB29, 0x0F))), Local4)
                        Divide (Local3, Local4, Local5, Local3)
                        If (LGreaterEqual (Local5, 0x02))
                        {
                            Add (Local3, One, Local3)
                        }

                        If (LEqual (DerefOf (Index (G3TB, And (CB29, 0x0F))), 
                            0x06))
                        {
                            Subtract (Local3, 0x64, ASB1)
                        }
                        Else
                        {
                            If (LEqual (DerefOf (Index (G3TB, And (CB29, 0x0F))), 
                                0x04))
                            {
                                Subtract (Local3, 0xC8, ASB1)
                            }
                            Else
                            {
                                If (LEqual (DerefOf (Index (G3TB, And (CB29, 0x0F))), 
                                    0x03))
                                {
                                    Subtract (Local3, 0xC8, ASB1)
                                }
                            }
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x12))
                        {
                            Store (GCVV (), ASB1)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x13))
                            {
                                If (LOr (Or (And (ShiftRight (GMDX (0x01A0), 0x06), One
                                    ), And (GMDX (0x0199), One)), LEqual (And (ShiftRight (GMAX (
                                    0xCE), 0x1C), One), Zero)))
                                {
                                    Store (GNVS (0x82A0), Local1)
                                    Subtract (And (ShiftRight (GMAX (0xCE), 0x08), 0xFF), Local1, 
                                        ASB1)
                                }
                                Else
                                {
                                    If (LNotEqual (GODS, 0xFF))
                                    {
                                        If (LLess (GODS, 0x04))
                                        {
                                            Store (GMAX (0x01AD), Local1)
                                        }
                                        Else
                                        {
                                            Store (GMDX (0x01AD), Local1)
                                            Subtract (GODS, 0x04, GODS)
                                        }

                                        ShiftLeft (GODS, 0x03, Local5)
                                        ShiftRight (Local1, Local5, Local0)
                                        Subtract (And (Local0, 0xFF), DerefOf (Index (G3C2, 0x04)), 
                                            Local0)
                                        Store (Local0, ASB1)
                                    }
                                }
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x15))
                                {
                                    Store (GVCV (), ASB1)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x16))
                                    {
                                        Store (GCPV (), ASB1)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x31))
                                        {
                                            Store (GNVS (0x3405), ASB1)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x32))
                                            {
                                                Store (GDRV (), ASB1)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x34))
                                                {
                                                    Store (GDCV (Zero), ASB1)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x35))
                                                    {
                                                        Store (GDQV (Zero), ASB1)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x36))
                                                        {
                                                            Store (GDCV (One), ASB1)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0x37))
                                                            {
                                                                Store (GDQV (One), ASB1)
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0x38))
                                                                {
                                                                    Store (GDCV (0x02), ASB1)
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_0, 0x39))
                                                                    {
                                                                        Store (GDQV (0x02), ASB1)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0xB1))
                                                                        {
                                                                            Store (GSCV (), ASB1)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0xB3))
                                                                            {
                                                                                Store (GSPV (), ASB1)
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_0, 0xB2))
                                                                                {
                                                                                    Store (GNCV (), ASB1)
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_0, 0xB4))
                                                                                    {
                                                                                        Store (GNPV (), ASB1)
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (_T_0, 0xF0)) {}
                                                                                        Else
                                                                                        {
                                                                                            Store (Zero, ASB0)
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SIT3, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                If (LNotEqual (GNVS (0x53D0), Arg1))
                {
                    If (And (Arg2, One))
                    {
                        SNVS (0x53D0, Arg1)
                    }

                    Or (ASB0, 0x02, ASB0)
                }
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    If (LNotEqual (GNVS (0x3401), Arg1))
                    {
                        If (And (Arg2, One))
                        {
                            SNVS (0x3401, Arg1)
                        }

                        Or (ASB0, 0x02, ASB0)
                    }
                }
                Else
                {
                    If (LEqual (_T_0, 0x11))
                    {
                        Store (RBLK (0xD2, Zero, 0x21), CLKR)
                        CreateByteField (CLKR, Zero, CB00)
                        CreateByteField (CLKR, One, CB01)
                        CreateWordField (CLKR, 0x0B, CBMN)
                        CreateByteField (CLKR, 0x1D, CB29)
                        Multiply (Arg1, 0x03, Local0)
                        If (LEqual (DerefOf (Index (G3TB, And (CB29, 0x0F))), 
                            0x06))
                        {
                            CreateByteField (MN6B, Local0, M600)
                            CreateWordField (MN6B, Increment (Local0), M6VL)
                            Store (M6VL, CBMN)
                        }
                        Else
                        {
                            If (LEqual (DerefOf (Index (G3TB, And (CB29, 0x0F))), 
                                0x04))
                            {
                                CreateByteField (MN4B, Local0, M400)
                                CreateWordField (MN4B, Increment (Local0), M4VL)
                                Store (M4VL, CBMN)
                            }
                            Else
                            {
                                If (LEqual (DerefOf (Index (G3TB, And (CB29, 0x0F))), 
                                    0x03))
                                {
                                    CreateByteField (MN3B, Local0, M300)
                                    CreateWordField (MN3B, Increment (Local0), M3VL)
                                    Store (M3VL, CBMN)
                                }
                            }
                        }

                        If (And (Arg2, 0x03))
                        {
                            Store (And (CB00, 0xDF), CB00)
                            Store (Or (CB01, 0x10), CB01)
                            WBLK (0xD2, Zero, 0x13, CLKR)
                            SNVS (0x17BF, One)
                        }

                        If (And (Arg2, One))
                        {
                            SNVS (0xA7B0, Arg1)
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x12))
                        {
                            If (And (Arg2, 0x03))
                            {
                                SCVV (Arg1)
                            }

                            If (And (Arg2, One))
                            {
                                SNVS (0x82F8, Arg1)
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x13))
                            {
                                If (And (Arg2, 0x03))
                                {
                                    If (LOr (And (GMDX (0x0199), One), LEqual (And (ShiftRight (
                                        GMAX (0xCE), 0x1C), One), Zero)))
                                    {
                                        Store (0x9999, DBG8)
                                    }
                                    Else
                                    {
                                        If (LNotEqual (GODS, 0xFF))
                                        {
                                            Store (GNVS (0x82A0), Local0)
                                            Add (Local0, Arg1, Local0)
                                            Store (Local0, Index (TBRT, GODS))
                                            Store (0xFF, Index (TBMK, GODS))
                                        }
                                        Else
                                        {
                                            CreateDWordField (TBRT, Zero, TRAX)
                                            CreateDWordField (TBRT, 0x04, TRDX)
                                            CreateDWordField (TBMK, Zero, TRMA)
                                            CreateDWordField (TBMK, 0x04, TRMD)
                                            Store (GMAX (0x01AD), Local1)
                                            Store (GMDX (0x01AD), Local2)
                                            Or (And (Local1, Not (TRMA)), TRAX, Local1)
                                            Or (And (Local2, Not (TRMD)), TRDX, Local2)
                                            SMSR (0x01AD, Local1, Local2)
                                            Store (Zero, Local0)
                                            While (LLess (Local0, 0x08))
                                            {
                                                Store (Zero, Index (TBRT, Local0))
                                                Store (Zero, Index (TBMK, Local0))
                                                Increment (Local0)
                                            }

                                            If (LLessEqual (GNVS (0x82A0), And (GMAX (0x0199), 0xFF)))
                                            {
                                                Store (GMDX (0x01A0), Local3)
                                                And (Local3, 0xFFFFFFBF, Local3)
                                                SMSR (0x01A0, GMAX (0x01A0), Local3)
                                                Add (GNVS (0x82A0), One, Local2)
                                                Store (GMAX (0x0199), Local3)
                                                Or (And (Local3, 0xFFFFFF00), Local2, Local2)
                                                SMSR (0x0199, Local2, GMDX (0x0199))
                                            }
                                        }
                                    }
                                }

                                If (And (Arg2, One)) {}
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x15))
                                {
                                    If (And (Arg2, 0x03))
                                    {
                                        SVCV (Arg1)
                                    }

                                    If (And (Arg2, One))
                                    {
                                        SNVS (0x7310, Arg1)
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x16))
                                    {
                                        If (And (Arg2, 0x03))
                                        {
                                            SCPV (Arg1)
                                        }

                                        If (And (Arg2, One))
                                        {
                                            SNVS (0x7330, Arg1)
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x31))
                                        {
                                            If (LNotEqual (GNVS (0x3405), Arg1))
                                            {
                                                If (And (Arg2, One))
                                                {
                                                    SNVS (0x3405, Arg1)
                                                    If (Arg1)
                                                    {
                                                        If (LNotEqual (Add (ShiftLeft (Decrement (Arg1), 0x02), One, 
                                                            Local0), GNVS (0x53D0)))
                                                        {
                                                            SNVS (0x53D0, Local0)
                                                        }
                                                    }

                                                    Or (ASB0, 0x02, ASB0)
                                                }
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x32))
                                            {
                                                If (And (Arg2, 0x03))
                                                {
                                                    Subtract (Arg1, One, Local1)
                                                    SDRV (Local1)
                                                }

                                                If (And (Arg2, One))
                                                {
                                                    SNVS (0x7320, Arg1)
                                                }
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x34))
                                                {
                                                    SDCV (Zero, Arg1)
                                                    If (And (Arg2, One))
                                                    {
                                                        SNVS (0x7348, Arg1)
                                                    }
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x35))
                                                    {
                                                        SDQV (Zero, Arg1)
                                                        If (And (Arg2, One))
                                                        {
                                                            SNVS (0x7350, Arg1)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x36))
                                                        {
                                                            SDCV (One, Arg1)
                                                            If (And (Arg2, One))
                                                            {
                                                                SNVS (0x7358, Arg1)
                                                            }
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0x37))
                                                            {
                                                                SDQV (One, Arg1)
                                                                If (And (Arg2, One))
                                                                {
                                                                    SNVS (0x7360, Arg1)
                                                                }
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0x38))
                                                                {
                                                                    SDCV (0x02, Arg1)
                                                                    If (And (Arg2, One))
                                                                    {
                                                                        SNVS (0x7368, Arg1)
                                                                    }
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_0, 0x39))
                                                                    {
                                                                        SDQV (0x02, Arg1)
                                                                        If (And (Arg2, One))
                                                                        {
                                                                            SNVS (0x7378, Arg1)
                                                                        }
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0xB1))
                                                                        {
                                                                            If (And (Arg2, 0x03))
                                                                            {
                                                                                SSCV (Arg1)
                                                                            }

                                                                            If (And (Arg2, One))
                                                                            {
                                                                                SNVS (0x7318, Arg1)
                                                                            }
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0xB3))
                                                                            {
                                                                                If (And (Arg2, 0x03))
                                                                                {
                                                                                    SSPV (Arg1)
                                                                                }

                                                                                If (And (Arg2, One))
                                                                                {
                                                                                    SNVS (0x7328, Arg1)
                                                                                }
                                                                            }
                                                                            Else
                                                                            {
                                                                                If (LEqual (_T_0, 0xB2))
                                                                                {
                                                                                    If (And (Arg2, 0x03))
                                                                                    {
                                                                                        SNCV (Arg1)
                                                                                    }

                                                                                    If (And (Arg2, One))
                                                                                    {
                                                                                        SNVS (0x7318, Arg1)
                                                                                    }
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If (LEqual (_T_0, 0xB4))
                                                                                    {
                                                                                        If (And (Arg2, 0x03))
                                                                                        {
                                                                                            SNPV (Arg1)
                                                                                        }

                                                                                        If (And (Arg2, One))
                                                                                        {
                                                                                            SNVS (0x7328, Arg1)
                                                                                        }
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If (LEqual (_T_0, 0xF0))
                                                                                        {
                                                                                            Store (Arg1, GODS)
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            Store (Zero, ASB0)
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (GCVV, 0, NotSerialized)
        {
            Store (Zero, DVMS)
            If (DVMS)
            {
                Store (RBYT (ShiftLeft (ITAD, One), 0x02), Local2)
                Store (Local2, Local0)
            }
            Else
            {
                Store (RBYT (ShiftLeft (ITAD, One), 0x03), Local0)
                Subtract (0x7A, Local0, Local0)
            }

            ENFG (0x09)
            If (LEqual (And (OPT1, One), Zero))
            {
                Add (Local0, 0x10, Local0)
            }

            If (And (OPT1, 0x04))
            {
                Store (RDVI (Local0), Local0)
            }

            Store (RBYT (ShiftLeft (ITAD, One), Zero), Local2)
            If (LEqual (And (Local2, 0x02), Zero))
            {
                If (And (OPT1, 0x04))
                {
                    Subtract (0x7A, MVID, Local0)
                    If (LLess (Local0, 0x37))
                    {
                        Store (Zero, Local0)
                    }
                    Else
                    {
                        Subtract (Local0, 0x37, Local0)
                    }
                }
                Else
                {
                    Subtract (0x7A, MVID, Local0)
                }
            }

            EXFG ()
            Return (Local0)
        }

        Method (SCVV, 1, NotSerialized)
        {
            ENFG (0x09)
            Store (Zero, DVMS)
            Store (RBYT (ShiftLeft (ITAD, One), Zero), Local0)
            If (And (Local0, 0x04))
            {
                Or (Local0, 0x08, Local0)
                WBYT (ShiftLeft (ITAD, One), Zero, Local0)
                Sleep (One)
                And (Local0, 0xF7, Local0)
                WBYT (ShiftLeft (ITAD, One), Zero, Local0)
            }

            If (And (OPT1, 0x04))
            {
                Store (Arg0, CVIO)
                Store (GDVI (Add (Arg0, 0x40)), Arg0)
            }

            Store (Arg0, Local6)
            If (LGreater (Arg0, 0x79))
            {
                Subtract (Arg0, 0x10, Arg0)
            }
            Else
            {
                ENFG (0x09)
                And (OPT0, 0xFE, OPT0)
                Or (OPT1, One, OPT1)
            }

            Store (0x7A, Local0)
            Subtract (Local0, Arg0, Local0)
            If (LLess (Local0, 0x02))
            {
                Store (0x02, Local0)
            }

            If (DVMS)
            {
                Add (MVID, One, Local3)
                Subtract (Local3, Local0, Local2)
                WBYT (ShiftLeft (ITAD, One), 0x02, Local2)
                Store (RBYT (ShiftLeft (ITAD, One), Zero), Local2)
                Or (Local0, 0x1A, Local0)
            }
            Else
            {
                WBYT (ShiftLeft (ITAD, One), 0x02, Local0)
                Store (RBYT (ShiftLeft (ITAD, One), Zero), Local0)
                Or (And (Local0, 0xEF), 0x0A, Local0)
            }

            WBYT (ShiftLeft (ITAD, One), Zero, Local0)
            If (LGreater (Local6, 0x79))
            {
                ENFG (0x09)
                And (OPT0, 0xFE, OPT0)
                And (OPT1, 0xFE, OPT1)
            }

            EXFG ()
            Return (One)
        }

        Method (GDVI, 1, NotSerialized)
        {
            If (LLess (Arg0, 0x24))
            {
                Store (Zero, Local0)
            }
            Else
            {
                Multiply (Arg0, 0x0A, Local0)
                Subtract (Local0, 0x0160, Local0)
                Divide (Local0, 0x0D, Local1, Local0)
            }

            Return (Local0)
        }

        Method (RDVI, 1, NotSerialized)
        {
            Store (CVIO, Local0)
            Return (Local0)
        }

        Method (GVCV, 0, NotSerialized)
        {
            If (GP00)
            {
                Store (0x42, Local5)
            }
            Else
            {
                Store (0x62, Local5)
            }

            If (GP32)
            {
                ENFG (0x0D)
                If (LEqual (ShiftRight (And (CRE4, 0xC0), 0x06), Zero))
                {
                    Store (Zero, Local0)
                }
                Else
                {
                    Subtract (Local5, CRE2, Local0)
                }
            }
            Else
            {
                ENFG (0x08)
                If (LNotEqual (OPT0, Zero))
                {
                    Store (Zero, Local0)
                }
                Else
                {
                    Subtract (Local5, OPT1, Local0)
                }
            }

            ENFG (0x09)
            If (LEqual (And (OPT1, 0x20), Zero))
            {
                Add (Local0, 0x10, Local0)
            }

            Store (TVCV (Zero, Local0), Local0)
            EXFG ()
            Return (Local0)
        }

        Method (SVCV, 1, NotSerialized)
        {
            Store (TVCV (One, Arg0), Arg0)
            Store (Arg0, Local6)
            If (GP00)
            {
                Store (0x42, Local0)
                Store (0x40, Local5)
                If (LGreater (Arg0, 0x40))
                {
                    Subtract (Arg0, 0x10, Arg0)
                }

                If (LLess (Local0, Arg0))
                {
                    Store (0x40, Arg0)
                }
            }
            Else
            {
                Store (0x62, Local0)
                Store (0x60, Local5)
                If (LGreater (Arg0, 0x60))
                {
                    Subtract (Arg0, 0x10, Arg0)
                }

                If (LLess (Local0, Arg0))
                {
                    Store (0x62, Arg0)
                }
            }

            If (LLessEqual (Local6, Local5))
            {
                ENFG (0x09)
                And (OPT0, 0xDF, OPT0)
                Or (OPT1, 0x20, OPT1)
            }

            If (GP32)
            {
                Or (CR2C, 0x02, CR2C)
                ENFG (0x0D)
                Subtract (Local0, Arg0, CRE0)
                And (CRE4, 0x38, Local0)
                Or (Local0, 0x86, CRE4)
                Sleep (0x64)
                EXFG ()
            }
            Else
            {
                ENFG (0x08)
                Or (ACTR, 0x02, ACTR)
                Store (Zero, OPT0)
                Subtract (Local0, Arg0, Local1)
                If (LGreater (Local1, 0x02))
                {
                    Store (Local1, OPT1)
                }
                Else
                {
                    Store (0x02, OPT1)
                }

                ENFG (0x0F)
                Store (Zero, CRE0)
                ENFG (0x0A)
                Or (CRE9, 0x08, CRE9)
                And (CR2C, 0xFC, CR2C)
                EXFG ()
            }

            If (LGreater (Local6, Local5))
            {
                ENFG (0x09)
                And (OPT0, 0xDF, OPT0)
                And (OPT1, 0xDF, OPT1)
            }

            Return (One)
        }

        Method (TVCV, 2, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                If (LGreaterEqual (Arg1, 0x24))
                {
                    If (LLessEqual (Arg1, 0x2F))
                    {
                        Add (Arg1, 0x02, Arg1)
                    }
                    Else
                    {
                        If (LLessEqual (Arg1, 0x3F))
                        {
                            Add (Arg1, 0x04, Arg1)
                        }
                        Else
                        {
                            If (LLessEqual (Arg1, 0x50))
                            {
                                Add (Arg1, 0x06, Arg1)
                                If (LGreater (Arg1, 0x50))
                                {
                                    Store (0x50, Arg1)
                                }
                            }
                        }
                    }
                }
            }
            Else
            {
                If (LGreaterEqual (Arg1, 0x24))
                {
                    If (LLessEqual (Arg1, 0x31))
                    {
                        Subtract (Arg1, 0x02, Arg1)
                    }
                    Else
                    {
                        If (LLessEqual (Arg1, 0x43))
                        {
                            Subtract (Arg1, 0x04, Arg1)
                        }
                        Else
                        {
                            If (LLessEqual (Arg1, 0x50))
                            {
                                Subtract (Arg1, 0x06, Arg1)
                            }
                        }
                    }
                }
            }

            Return (Arg1)
        }

        Method (GCPV, 0, NotSerialized)
        {
            Store (RBYT (0x3C, 0x33), Local0)
            Return (Local0)
        }

        Method (SCPV, 1, NotSerialized)
        {
            WBYT (0x3C, 0x30, Arg0)
            WBYT (0x3C, 0x31, One)
            WBYT (0x3C, 0x32, One)
            WBYT (0x3C, 0x40, 0x08)
            Return (One)
        }

        Method (GNCV, 0, NotSerialized)
        {
            Store (RBYT (0x3C, 0x03), Local0)
            Return (Local0)
        }

        Method (SNCV, 1, NotSerialized)
        {
            WBYT (0x3C, Zero, Arg0)
            WBYT (0x3C, One, One)
            WBYT (0x3C, 0x02, One)
            WBYT (0x3C, 0x40, One)
            Return (One)
        }

        Method (GNPV, 0, NotSerialized)
        {
            Store (RBYT (0x3C, 0x23), Local0)
            Return (Local0)
        }

        Method (SNPV, 1, NotSerialized)
        {
            WBYT (0x3C, 0x20, Arg0)
            WBYT (0x3C, 0x21, One)
            WBYT (0x3C, 0x22, One)
            WBYT (0x3C, 0x40, 0x04)
            Return (One)
        }

        Method (GSCV, 0, NotSerialized)
        {
            ENFG (0x07)
            And (CRE4, One, Local0)
            ENFG (0x09)
            And (OPT0, 0x02, Local1)
            Subtract (0x03, Or (Local0, Local1), Local0)
            EXFG ()
            Return (Local0)
        }

        Method (SSCV, 1, NotSerialized)
        {
            Subtract (0x03, Arg0, Local0)
            ENFG (0x07)
            And (Local0, One, Local3)
            Or (CRE4, Local0, CRE4)
            And (CRE4, Or (Local3, 0xFE), CRE4)
            And (CRE5, Or (Local3, 0xFE), CRE5)
            ENFG (0x09)
            And (Local0, 0x02, Local0)
            Or (OPT0, Local0, OPT0)
            And (OPT0, Or (Local0, 0xFD), OPT0)
            And (OPT1, Or (Local0, 0xFD), OPT1)
            EXFG ()
            Return (One)
        }

        Method (GSPV, 0, NotSerialized)
        {
            ENFG (0x07)
            And (CRE4, 0x60, Local0)
            ShiftRight (Local0, 0x05, Local0)
            Subtract (0x03, Local0, Local0)
            EXFG ()
            Return (Local0)
        }

        Method (SSPV, 1, NotSerialized)
        {
            ENFG (0x07)
            Subtract (0x03, Arg0, Local0)
            ShiftLeft (And (Local0, 0x03), 0x05, Local0)
            Or (CRE4, Local0, CRE4)
            And (CRE4, Or (Local0, 0x9F), CRE4)
            And (CRE5, Or (Local0, 0x9F), CRE5)
            EXFG ()
            Return (One)
        }

        Method (SDRV, 1, NotSerialized)
        {
            WBYT (0x3C, 0x10, Increment (Arg0))
            WBYT (0x3C, 0x11, One)
            WBYT (0x3C, 0x12, One)
            WBYT (0x3C, 0x40, 0x02)
            Return (One)
        }

        Method (GDRV, 0, NotSerialized)
        {
            Store (RBYT (0x3C, 0x13), Local0)
            Return (Local0)
        }

        Method (GDCV, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                And (RBYT (0x64, One), 0x0F, Local0)
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    And (RBYT (0x64, 0x03), 0x0F, Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x02))
                    {
                        And (RBYT (0x60, 0x03), 0x0F, Local0)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Store (GVCT (Arg0, Zero), Local0)
            Return (Local0)
        }

        Method (GDQV, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                And (RBYT (0x64, 0x02), 0x0F, Local0)
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    And (RBYT (0x60, One), 0x0F, Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x02))
                    {
                        And (RBYT (0x60, 0x02), 0x0F, Local0)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Store (GVCT (Arg0, One), Local0)
            Return (Local0)
        }

        Method (SDCV, 2, NotSerialized)
        {
            SVCT (Arg0, Zero, Arg1)
            Add (GDRV (), One, Local0)
            Store (GDRI (Arg1, Local0), Arg1)
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                WBYT (0x64, One, Arg1)
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    Or (Arg1, 0x80, Arg1)
                    WBYT (0x64, 0x03, Arg1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x02))
                    {
                        Or (Arg1, 0x80, Arg1)
                        WBYT (0x60, 0x03, Arg1)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Return (One)
        }

        Method (SDQV, 2, NotSerialized)
        {
            SVCT (Arg0, One, Arg1)
            Add (GDRV (), One, Local0)
            Store (GDRI (Arg1, Local0), Arg1)
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                WBYT (0x64, 0x02, Arg1)
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    WBYT (0x60, One, Arg1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x02))
                    {
                        WBYT (0x60, 0x02, Arg1)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Return (One)
        }

        Method (GDRI, 2, NotSerialized)
        {
            Add (Multiply (Arg1, 0xC8, Local6), 0x3A98, Local6)
            Divide (0x69, 0x05, Local0, Local5)
            If (LEqual (Arg0, Zero))
            {
                Store (0x40, Local4)
            }
            Else
            {
                Subtract (Arg0, One, Arg0)
                If (LEqual (Arg0, Local5))
                {
                    Store (0x40, Local4)
                }
                Else
                {
                    If (LGreater (Arg0, Local5))
                    {
                        Divide (Local6, 0xC8, Local0, Local4)
                        Multiply (Local4, Subtract (Arg0, Local5), Local4)
                        Divide (Local4, 0x7D, Local0, Local4)
                        If (LGreater (Local4, 0x10))
                        {
                            Store (0x10, Local4)
                        }

                        Add (Local4, 0x40, Local4)
                    }
                    Else
                    {
                        Divide (Local6, 0xC8, Local0, Local4)
                        Multiply (Local4, Subtract (Local5, Arg0), Local4)
                        Divide (Local4, 0x19, Local0, Local4)
                        If (LGreater (Local4, 0x3F))
                        {
                            Store (0x3F, Local4)
                        }
                    }
                }
            }

            Return (Local4)
        }

        Method (SVCT, 3, NotSerialized)
        {
            Add (Arg1, Multiply (Arg0, 0x02), Local0)
            Store (Arg2, Index (CHRF, Local0))
            Return (One)
        }

        Method (GVCT, 2, NotSerialized)
        {
            Add (Arg1, Multiply (Arg0, 0x02), Local0)
            Store (DerefOf (Index (CHRF, Local0)), Local2)
            If (LEqual (Local2, 0xFF))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (And (Arg0, 0xFF), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    If (LEqual (Arg1, Zero))
                    {
                        Store (GNVS (0x7348), Local1)
                    }
                    Else
                    {
                        Store (GNVS (0x7350), Local1)
                    }

                    If (LEqual (Local1, Zero))
                    {
                        Store (0x15, Local1)
                    }
                    Else
                    {
                        Subtract (Local1, One, Local1)
                    }

                    Store (Local1, Index (CHRF, Local0))
                }
                Else
                {
                    If (LEqual (_T_0, One))
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Store (GNVS (0x7358), Local1)
                        }
                        Else
                        {
                            Store (GNVS (0x7360), Local1)
                        }

                        If (LEqual (Local1, Zero))
                        {
                            Store (0x15, Local1)
                        }
                        Else
                        {
                            Subtract (Local1, One, Local1)
                        }

                        Store (Local1, Index (CHRF, Local0))
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x02))
                        {
                            If (LEqual (Arg1, Zero))
                            {
                                Store (GNVS (0x7368), Local1)
                            }
                            Else
                            {
                                Store (GNVS (0x7378), Local1)
                            }

                            If (LEqual (Local1, Zero))
                            {
                                Store (0x15, Local1)
                            }
                            Else
                            {
                                Subtract (Local1, One, Local1)
                            }

                            Store (Local1, Index (CHRF, Local0))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }
            }
            Else
            {
                Store (DerefOf (Index (CHRF, Local0)), Local1)
            }

            Store (DerefOf (Index (CHRF, Local0)), Local1)
            Return (Local1)
        }

        Name (CLKR, Buffer (0x20)
        {
            /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0010 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0018 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        })
        Name (G3TB, Buffer (0x10)
        {
            /* 0000 */   0x02, 0x03, 0x05, 0x09, 0x04, 0x06, 0x0A, 0x12,
            /* 0008 */   0x08, 0x0C, 0x14, 0x24, 0x10, 0x18, 0x28, 0x48
        })
        Name (PCEF, Buffer (0xA2)
        {
            /* 0000 */   0xDB, 0xEB, 0x16, 0xC2, 0xD8, 0xD5, 0x1C, 0xFC,
            /* 0008 */   0xD6, 0xC7, 0x59, 0xE5, 0x1B, 0xFA, 0x93, 0xB1,
            /* 0010 */   0xD9, 0xEB, 0xCF, 0x8E, 0x98, 0xE6, 0xD1, 0xA4,
            /* 0018 */   0x5A, 0xFE, 0x4D, 0x80, 0x50, 0x9F, 0x19, 0xFB,
            /* 0020 */   0x59, 0xFD, 0xD6, 0xE0, 0x58, 0xF7, 0x50, 0xA6,
            /* 0028 */   0x96, 0xE6, 0x17, 0xF3, 0x17, 0xF5, 0x56, 0xEC,
            /* 0030 */   0x17, 0xF9, 0x17, 0xFB, 0x57, 0xFD, 0xD4, 0xDD,
            /* 0038 */   0x94, 0xDF, 0x54, 0xE1, 0x14, 0xE3, 0xD4, 0xE4,
            /* 0040 */   0x94, 0xE6, 0x54, 0xE8, 0x8F, 0xAF, 0xD4, 0xEB,
            /* 0048 */   0x4E, 0xA6, 0x53, 0xE3, 0xCF, 0xB4, 0x8B, 0x85,
            /* 0050 */   0x53, 0xE8, 0x54, 0xF6, 0xD1, 0xD2, 0xD0, 0xC7,
            /* 0058 */   0xD1, 0xD5, 0x4B, 0x8B, 0x14, 0xFF, 0x51, 0xDA,
            /* 0060 */   0x93, 0xF5, 0x53, 0xF7, 0x4D, 0xAA, 0x4D, 0xAB,
            /* 0068 */   0xD2, 0xEE, 0x4F, 0xC8, 0x10, 0xD7, 0x0F, 0xCB,
            /* 0070 */   0x4F, 0xCC, 0xD2, 0xF6, 0x91, 0xEA, 0xD2, 0xF9,
            /* 0078 */   0x90, 0xDF, 0x38, 0x28, 0x3A, 0x64, 0x32, 0x87,
            /* 0080 */   0x7C, 0xAB, 0xF6, 0x05, 0xF6, 0x05, 0x64, 0x07,
            /* 0088 */   0x3C, 0xC6, 0x3C, 0xC6, 0x3C, 0xC6, 0xFE, 0x06,
            /* 0090 */   0xF6, 0x25, 0xB6, 0x26, 0x76, 0x2B, 0x3A, 0xA6,
            /* 0098 */   0x3C, 0xE6, 0x7E, 0x26, 0x8C, 0xBA, 0x10, 0xFA,
            /* 00A0 */   0x8C, 0xBC
        })
        Name (MN6B, Buffer (0x01C8)
        {
            /* 0000 */   0x06, 0x2A, 0xDC, 0x06, 0xE2, 0xB3, 0x06, 0x23,
            /* 0008 */   0xBB, 0x06, 0xA5, 0xC7, 0x06, 0xDF, 0xA8, 0x06,
            /* 0010 */   0x2C, 0xF2, 0x06, 0x1F, 0xAC, 0x06, 0x65, 0xCF,
            /* 0018 */   0x06, 0x23, 0xC6, 0x06, 0x22, 0xC2, 0x06, 0x2A,
            /* 0020 */   0xF2, 0x06, 0xA3, 0xCB, 0x06, 0x1E, 0xB0, 0x06,
            /* 0028 */   0x62, 0xC9, 0x06, 0x23, 0xD1, 0x06, 0x2A, 0xFD,
            /* 0030 */   0x06, 0x29, 0xF9, 0x06, 0xA3, 0xD6, 0x06, 0xE6,
            /* 0038 */   0xEA, 0x06, 0x1E, 0xBB, 0x06, 0x23, 0xDC, 0x06,
            /* 0040 */   0x1B, 0xAB, 0x06, 0xA8, 0xFF, 0x06, 0xA3, 0xE1,
            /* 0048 */   0x06, 0xDA, 0xA8, 0x06, 0x95, 0x89, 0x06, 0x23,
            /* 0050 */   0xE7, 0x06, 0xE0, 0xD4, 0x06, 0x64, 0xF1, 0x06,
            /* 0058 */   0xA3, 0xEC, 0x06, 0x15, 0x8F, 0x06, 0x53, 0x82,
            /* 0060 */   0x06, 0x23, 0xF2, 0x06, 0x19, 0xAF, 0x06, 0x62,
            /* 0068 */   0xEF, 0x06, 0x17, 0xA3, 0x06, 0x1C, 0xC8, 0x06,
            /* 0070 */   0x1A, 0xBB, 0x06, 0xE3, 0xFD, 0x06, 0xDA, 0xBD,
            /* 0078 */   0x06, 0x9E, 0xDC, 0x06, 0xD7, 0xA9, 0x06, 0x1E,
            /* 0080 */   0xDF, 0x06, 0xDA, 0xC2, 0x06, 0x60, 0xF1, 0x06,
            /* 0088 */   0x95, 0x9F, 0x06, 0x61, 0xFC, 0x06, 0x1E, 0xE7,
            /* 0090 */   0x06, 0xE1, 0xFF, 0x06, 0xE0, 0xF9, 0x06, 0x1C,
            /* 0098 */   0xDC, 0x06, 0x5D, 0xE5, 0x06, 0x17, 0xB7, 0x06,
            /* 00A0 */   0x5A, 0xD0, 0x06, 0x1E, 0xF2, 0x06, 0x95, 0xAA,
            /* 00A8 */   0x06, 0x9B, 0xDC, 0x06, 0x53, 0x9C, 0x06, 0x53,
            /* 00B0 */   0x9D, 0x06, 0xDB, 0xE0, 0x06, 0x15, 0xB0, 0x06,
            /* 00B8 */   0x1E, 0xFD, 0x06, 0x9A, 0xDC, 0x06, 0x57, 0xC4,
            /* 00C0 */   0x06, 0x1D, 0xF9, 0x06, 0x1C, 0xF2, 0x06, 0x10,
            /* 00C8 */   0x8B, 0x06, 0x9D, 0xFD, 0x06, 0x19, 0xDC, 0x06,
            /* 00D0 */   0xD6, 0xC2, 0x06, 0x15, 0xBB, 0x06, 0xDA, 0xE8,
            /* 00D8 */   0x06, 0x5A, 0xEA, 0x06, 0xDC, 0xFD, 0x06, 0x97,
            /* 00E0 */   0xD1, 0x06, 0x9B, 0xF7, 0x06, 0x54, 0xB8, 0x06,
            /* 00E8 */   0x57, 0xD5, 0x06, 0x16, 0xCD, 0x06, 0x59, 0xEA,
            /* 00F0 */   0x06, 0x15, 0xC6, 0x06, 0x9A, 0xF6, 0x06, 0x0F,
            /* 00F8 */   0x8F, 0x06, 0x13, 0xB6, 0x06, 0x13, 0xB7, 0x06,
            /* 0100 */   0x95, 0xCB, 0x06, 0x52, 0xAF, 0x06, 0x96, 0xD7,
            /* 0108 */   0x06, 0x97, 0xE2, 0x06, 0x99, 0xF7, 0x06, 0x15,
            /* 0110 */   0xD1, 0x06, 0x19, 0xFA, 0x06, 0x58, 0xF1, 0x06,
            /* 0118 */   0x98, 0xF2, 0x06, 0xD1, 0xAC, 0x06, 0x95, 0xD6,
            /* 0120 */   0x06, 0x0F, 0x9A, 0x06, 0x54, 0xCE, 0x06, 0xD8,
            /* 0128 */   0xF8, 0x06, 0xD7, 0xEF, 0x06, 0x15, 0xDC, 0x06,
            /* 0130 */   0x96, 0xE7, 0x06, 0xD1, 0xB3, 0x06, 0x8F, 0x9F,
            /* 0138 */   0x06, 0xD7, 0xF5, 0x06, 0x95, 0xE1, 0x06, 0x56,
            /* 0140 */   0xED, 0x06, 0x57, 0xF9, 0x06, 0x13, 0xCF, 0x06,
            /* 0148 */   0x13, 0xD0, 0x06, 0x16, 0xF2, 0x06, 0x13, 0xD2,
            /* 0150 */   0x06, 0x13, 0xD3, 0x06, 0x13, 0xD4, 0x06, 0x96,
            /* 0158 */   0xF6, 0x06, 0x95, 0xEC, 0x06, 0x95, 0xED, 0x06,
            /* 0160 */   0x8F, 0xAA, 0x06, 0x11, 0xC2, 0x06, 0x56, 0xFC,
            /* 0168 */   0x06, 0x15, 0xF2, 0x06, 0x52, 0xD0, 0x06, 0xD6,
            /* 0170 */   0xFF, 0x06, 0x94, 0xE9, 0x06, 0x0F, 0xB0, 0x06,
            /* 0178 */   0x95, 0xF7, 0x06, 0x51, 0xC9, 0x06, 0x50, 0xBE,
            /* 0180 */   0x06, 0x4B, 0x83, 0x06, 0xD5, 0xFB, 0x06, 0x15,
            /* 0188 */   0xFD, 0x06, 0x14, 0xF2, 0x06, 0xD2, 0xDA, 0x06,
            /* 0190 */   0x4B, 0x86, 0x06, 0x92, 0xDC, 0x06, 0xD3, 0xE9,
            /* 0198 */   0x06, 0xD3, 0xEA, 0x06, 0xD3, 0xEB, 0x06, 0x0F,
            /* 01A0 */   0xBB, 0x06, 0xCD, 0xA2, 0x06, 0x0E, 0xB0, 0x06,
            /* 01A8 */   0x94, 0xFC, 0x06, 0x91, 0xD7, 0x06, 0x12, 0xE5,
            /* 01B0 */   0x06, 0x94, 0xFF, 0x06, 0x12, 0xE7, 0x06, 0x8C,
            /* 01B8 */   0x9A, 0x06, 0xD2, 0xE8, 0x06, 0xCD, 0xA8, 0x06,
            /* 01C0 */   0xD2, 0xEA, 0x06, 0x91, 0xDE, 0x00, 0xFF, 0xFF
        })
        Name (MN4B, Buffer (0x038A)
        {
            /* 0000 */   0x04, 0x9F, 0xD8, 0x04, 0x54, 0x8C, 0x04, 0xD0,
            /* 0008 */   0x70, 0x04, 0x92, 0x7F, 0x04, 0x53, 0x87, 0x04,
            /* 0010 */   0x4F, 0x6B, 0x04, 0xD4, 0x8F, 0x04, 0x12, 0x82,
            /* 0018 */   0x04, 0x12, 0x82, 0x04, 0x52, 0x83, 0x04, 0x94,
            /* 0020 */   0x92, 0x04, 0x92, 0x84, 0x04, 0xD1, 0x7D, 0x04,
            /* 0028 */   0xD2, 0x85, 0x04, 0x8E, 0x68, 0x04, 0x10, 0x78,
            /* 0030 */   0x04, 0xD4, 0x96, 0x04, 0x52, 0x88, 0x04, 0x93,
            /* 0038 */   0x90, 0x04, 0x50, 0x7A, 0x04, 0x91, 0x82, 0x04,
            /* 0040 */   0x93, 0x92, 0x04, 0x93, 0x92, 0x04, 0x51, 0x84,
            /* 0048 */   0x04, 0x93, 0x94, 0x04, 0x14, 0x9D, 0x04, 0x4F,
            /* 0050 */   0x76, 0x04, 0x93, 0x96, 0x04, 0x50, 0x7F, 0x04,
            /* 0058 */   0xD4, 0x9F, 0x04, 0x94, 0xA0, 0x04, 0x11, 0x89,
            /* 0060 */   0x04, 0x90, 0x81, 0x04, 0x93, 0x9A, 0x04, 0x4E,
            /* 0068 */   0x72, 0x04, 0x14, 0xA4, 0x04, 0x4E, 0x73, 0x04,
            /* 0070 */   0xCE, 0x73, 0x04, 0x92, 0x95, 0x04, 0xD1, 0x8D,
            /* 0078 */   0x04, 0x94, 0xA7, 0x04, 0xD3, 0x9F, 0x04, 0x12,
            /* 0080 */   0x98, 0x04, 0x12, 0x98, 0x04, 0x52, 0x99, 0x04,
            /* 0088 */   0x14, 0xAB, 0x04, 0x92, 0x9A, 0x04, 0x4F, 0x81,
            /* 0090 */   0x04, 0xD2, 0x9B, 0x04, 0x10, 0x8B, 0x04, 0xD3,
            /* 0098 */   0xA5, 0x04, 0x19, 0xDB, 0x04, 0x19, 0xDC, 0x04,
            /* 00A0 */   0x5C, 0xF7, 0x04, 0xD8, 0xD4, 0x04, 0x15, 0xBB,
            /* 00A8 */   0x04, 0x5B, 0xF1, 0x04, 0x59, 0xE0, 0x04, 0x5A,
            /* 00B0 */   0xEA, 0x04, 0xD1, 0x99, 0x04, 0xD6, 0xC7, 0x04,
            /* 00B8 */   0x97, 0xD1, 0x04, 0xDA, 0xED, 0x04, 0x11, 0x9C,
            /* 00C0 */   0x04, 0x54, 0xB8, 0x04, 0xDB, 0xF9, 0x04, 0x9A,
            /* 00C8 */   0xF1, 0x04, 0x91, 0x9E, 0x04, 0x57, 0xD7, 0x04,
            /* 00D0 */   0x9B, 0xFD, 0x04, 0x0E, 0x84, 0x04, 0xD1, 0xA0,
            /* 00D8 */   0x04, 0x1A, 0xF7, 0x04, 0x0F, 0x8F, 0x04, 0x96,
            /* 00E0 */   0xD2, 0x04, 0x51, 0xA3, 0x04, 0x13, 0xB7, 0x04,
            /* 00E8 */   0x15, 0xCB, 0x04, 0x18, 0xE9, 0x04, 0x91, 0xA5,
            /* 00F0 */   0x04, 0x12, 0xB0, 0x04, 0x1A, 0xFF, 0x04, 0x52,
            /* 00F8 */   0xB1, 0x04, 0x11, 0xA8, 0x04, 0x18, 0xEE, 0x04,
            /* 0100 */   0x4D, 0x81, 0x04, 0xD3, 0xBD, 0x04, 0x51, 0xAA,
            /* 0108 */   0x04, 0x56, 0xDD, 0x04, 0x4F, 0x97, 0x04, 0x19,
            /* 0110 */   0xFD, 0x04, 0xD8, 0xF3, 0x04, 0x15, 0xD6, 0x04,
            /* 0118 */   0x94, 0xCC, 0x04, 0x17, 0xEC, 0x04, 0x96, 0xE2,
            /* 0120 */   0x04, 0x50, 0xA5, 0x04, 0xD8, 0xF8, 0x04, 0xD8,
            /* 0128 */   0xF9, 0x04, 0x53, 0xC6, 0x04, 0x15, 0xDC, 0x04,
            /* 0130 */   0xD7, 0xF1, 0x04, 0x53, 0xC8, 0x04, 0x94, 0xD3,
            /* 0138 */   0x04, 0x8E, 0x94, 0x04, 0x53, 0xCA, 0x04, 0xD7,
            /* 0140 */   0xF5, 0x04, 0x4D, 0x8B, 0x04, 0xD5, 0xE1, 0x04,
            /* 0148 */   0x95, 0xE2, 0x04, 0x17, 0xF9, 0x04, 0x91, 0xB8,
            /* 0150 */   0x04, 0x12, 0xC4, 0x04, 0xD2, 0xC4, 0x04, 0x52,
            /* 0158 */   0xC5, 0x04, 0x16, 0xF2, 0x04, 0xD5, 0xE7, 0x04,
            /* 0160 */   0x10, 0xB1, 0x04, 0x13, 0xD3, 0x04, 0x51, 0xBD,
            /* 0168 */   0x04, 0x94, 0xDF, 0x04, 0x96, 0xF6, 0x04, 0x56,
            /* 0170 */   0xF7, 0x04, 0xD5, 0xEC, 0x04, 0x95, 0xED, 0x04,
            /* 0178 */   0x14, 0xE3, 0x04, 0x0D, 0x94, 0x04, 0x11, 0xC2,
            /* 0180 */   0x04, 0x93, 0xD9, 0x04, 0xD6, 0xFC, 0x04, 0x15,
            /* 0188 */   0xF2, 0x04, 0x91, 0xC4, 0x04, 0xD4, 0xE7, 0x04,
            /* 0190 */   0xD6, 0xFF, 0x04, 0x8D, 0x97, 0x04, 0xD1, 0xC6,
            /* 0198 */   0x04, 0x0F, 0xB0, 0x04, 0x54, 0xEB, 0x04, 0xD5,
            /* 01A0 */   0xF7, 0x04, 0x51, 0xC9, 0x04, 0x55, 0xF9, 0x04,
            /* 01A8 */   0x53, 0xE2, 0x04, 0x4B, 0x83, 0x04, 0x91, 0xCB,
            /* 01B0 */   0x04, 0x54, 0xF0, 0x04, 0x15, 0xFD, 0x04, 0xD5,
            /* 01B8 */   0xFD, 0x04, 0x11, 0xCE, 0x04, 0xD2, 0xDA, 0x04,
            /* 01C0 */   0x10, 0xC3, 0x04, 0x12, 0xDC, 0x04, 0x51, 0xD0,
            /* 01C8 */   0x04, 0x52, 0xDD, 0x04, 0x4D, 0xA0, 0x04, 0xD3,
            /* 01D0 */   0xEA, 0x04, 0xD1, 0xD2, 0x04, 0xCB, 0x88, 0x04,
            /* 01D8 */   0x0F, 0xBB, 0x04, 0x14, 0xFA, 0x04, 0x11, 0xD5,
            /* 01E0 */   0x04, 0x0E, 0xB0, 0x04, 0x14, 0xFC, 0x04, 0x8F,
            /* 01E8 */   0xBD, 0x04, 0x91, 0xD7, 0x04, 0x50, 0xCB, 0x04,
            /* 01F0 */   0xD4, 0xFE, 0x04, 0x94, 0xFF, 0x04, 0x93, 0xF3,
            /* 01F8 */   0x04, 0x8A, 0x80, 0x04, 0x8C, 0x9A, 0x04, 0x0B,
            /* 0200 */   0x8E, 0x04, 0x4E, 0xB5, 0x04, 0xCD, 0xA8, 0x04,
            /* 0208 */   0x4F, 0xC3, 0x04, 0x13, 0xF8, 0x04, 0x91, 0xDE,
            /* 0210 */   0x04, 0x93, 0xF9, 0x04, 0x13, 0xFA, 0x04, 0x0F,
            /* 0218 */   0xC6, 0x04, 0xD0, 0xD3, 0x04, 0x13, 0xFC, 0x04,
            /* 0220 */   0xD0, 0xD4, 0x04, 0xCE, 0xBA, 0x04, 0x13, 0xFE,
            /* 0228 */   0x04, 0x8B, 0x93, 0x04, 0x12, 0xF2, 0x04, 0x92,
            /* 0230 */   0xF2, 0x04, 0x52, 0xF3, 0x04, 0xD2, 0xF3, 0x04,
            /* 0238 */   0x92, 0xF4, 0x04, 0x12, 0xF5, 0x04, 0x8D, 0xB1,
            /* 0240 */   0x04, 0x4C, 0xA4, 0x04, 0x0E, 0xC0, 0x04, 0x4F,
            /* 0248 */   0xCE, 0x04, 0x91, 0xEA, 0x04, 0x50, 0xDD, 0x04,
            /* 0250 */   0x8B, 0x98, 0x04, 0xCB, 0x98, 0x04, 0x0D, 0xB5,
            /* 0258 */   0x04, 0x90, 0xDF, 0x04, 0x0D, 0xB6, 0x04, 0x0D,
            /* 0260 */   0xB6, 0x04, 0x0D, 0xB6, 0x04, 0x0D, 0xB7, 0x04,
            /* 0268 */   0x0D, 0xB7, 0x04, 0x0D, 0xB8, 0x04, 0x0D, 0xB8,
            /* 0270 */   0x04, 0x0D, 0xB9, 0x04, 0x0D, 0xB9, 0x04, 0x0D,
            /* 0278 */   0xBA, 0x04, 0x0D, 0xBA, 0x04, 0x0D, 0xBB, 0x04,
            /* 0280 */   0x0D, 0xBB, 0x04, 0x0D, 0xBB, 0x04, 0x0D, 0xBC,
            /* 0288 */   0x04, 0x0D, 0xBC, 0x04, 0x0D, 0xBD, 0x04, 0x0D,
            /* 0290 */   0xBD, 0x04, 0x0D, 0xBE, 0x04, 0x0D, 0xBE, 0x04,
            /* 0298 */   0x0D, 0xBF, 0x04, 0x0D, 0xBF, 0x04, 0x0D, 0xC0,
            /* 02A0 */   0x04, 0x0D, 0xC0, 0x04, 0x0D, 0xC0, 0x04, 0x0D,
            /* 02A8 */   0xC1, 0x04, 0x0D, 0xC1, 0x04, 0x0D, 0xC2, 0x04,
            /* 02B0 */   0x0D, 0xC2, 0x04, 0x0D, 0xC3, 0x04, 0x0D, 0xC3,
            /* 02B8 */   0x04, 0x0D, 0xC4, 0x04, 0x0D, 0xC4, 0x04, 0x0D,
            /* 02C0 */   0xC5, 0x04, 0x0D, 0xC5, 0x04, 0x0D, 0xC5, 0x04,
            /* 02C8 */   0x0D, 0xC6, 0x04, 0x0D, 0xC6, 0x04, 0x0D, 0xC7,
            /* 02D0 */   0x04, 0x0D, 0xC7, 0x04, 0x0D, 0xC8, 0x04, 0x0D,
            /* 02D8 */   0xC8, 0x04, 0x0D, 0xC9, 0x04, 0x0D, 0xC9, 0x04,
            /* 02E0 */   0x0D, 0xCA, 0x04, 0x0D, 0xCA, 0x04, 0x0D, 0xCA,
            /* 02E8 */   0x04, 0x0D, 0xCB, 0x04, 0x0D, 0xCB, 0x04, 0x0D,
            /* 02F0 */   0xCC, 0x04, 0x0D, 0xCC, 0x04, 0x0D, 0xCD, 0x04,
            /* 02F8 */   0x0D, 0xCD, 0x04, 0x0D, 0xCE, 0x04, 0x0D, 0xCE,
            /* 0300 */   0x04, 0x0D, 0xCF, 0x04, 0x0D, 0xCF, 0x04, 0x0D,
            /* 0308 */   0xCF, 0x04, 0x0D, 0xD0, 0x04, 0x0D, 0xD0, 0x04,
            /* 0310 */   0x0D, 0xD1, 0x04, 0x0D, 0xD1, 0x04, 0x0D, 0xD2,
            /* 0318 */   0x04, 0x0D, 0xD2, 0x04, 0x0D, 0xD3, 0x04, 0x0D,
            /* 0320 */   0xD3, 0x04, 0x0D, 0xD4, 0x04, 0x0D, 0xD4, 0x04,
            /* 0328 */   0x0D, 0xD4, 0x04, 0x0D, 0xD5, 0x04, 0x0D, 0xD5,
            /* 0330 */   0x04, 0x0D, 0xD6, 0x04, 0x0D, 0xD6, 0x04, 0x0D,
            /* 0338 */   0xD7, 0x04, 0x0D, 0xD7, 0x04, 0x0D, 0xD8, 0x04,
            /* 0340 */   0x0D, 0xD8, 0x04, 0x0D, 0xD8, 0x04, 0x0D, 0xD9,
            /* 0348 */   0x04, 0x0D, 0xD9, 0x04, 0x0D, 0xDA, 0x04, 0x0D,
            /* 0350 */   0xDA, 0x04, 0x0D, 0xDB, 0x04, 0x0D, 0xDB, 0x04,
            /* 0358 */   0x0D, 0xDC, 0x04, 0x0D, 0xDC, 0x04, 0x0D, 0xDD,
            /* 0360 */   0x04, 0x0D, 0xDD, 0x04, 0x0D, 0xDD, 0x04, 0x0D,
            /* 0368 */   0xDE, 0x04, 0x0D, 0xDE, 0x04, 0x0D, 0xDF, 0x04,
            /* 0370 */   0x0D, 0xDF, 0x04, 0x0D, 0xE0, 0x04, 0x0D, 0xE0,
            /* 0378 */   0x04, 0x0D, 0xE1, 0x04, 0x0D, 0xE1, 0x04, 0x0D,
            /* 0380 */   0xE2, 0x04, 0x0D, 0xE2, 0x04, 0x0D, 0xE2, 0x00,
            /* 0388 */   0xFF, 0xFF
        })
        Name (MN3B, Buffer (0x038A)
        {
            /* 0000 */   0x03, 0x63, 0xAF, 0x03, 0x63, 0xB8, 0x03, 0xE2,
            /* 0008 */   0xB3, 0x03, 0x6D, 0xEF, 0x03, 0x23, 0xBB, 0x03,
            /* 0010 */   0xAA, 0xE1, 0x03, 0xA5, 0xC7, 0x03, 0xE3, 0xBD,
            /* 0018 */   0x03, 0xDF, 0xA8, 0x03, 0x6B, 0xEB, 0x03, 0x2C,
            /* 0020 */   0xF2, 0x03, 0xAB, 0xED, 0x03, 0x1F, 0xAC, 0x03,
            /* 0028 */   0x63, 0xC3, 0x03, 0x65, 0xCF, 0x03, 0xAA, 0xEC,
            /* 0030 */   0x03, 0x23, 0xC6, 0x03, 0xED, 0xFF, 0x03, 0x22,
            /* 0038 */   0xC2, 0x03, 0xE3, 0xC8, 0x03, 0x2A, 0xF2, 0x03,
            /* 0040 */   0x17, 0x85, 0x03, 0xA3, 0xCB, 0x03, 0x5D, 0xA9,
            /* 0048 */   0x03, 0x1E, 0xB0, 0x03, 0xAA, 0xF7, 0x03, 0x62,
            /* 0050 */   0xC9, 0x03, 0x60, 0xBE, 0x03, 0x23, 0xD1, 0x03,
            /* 0058 */   0xEA, 0xFB, 0x03, 0x2A, 0xFD, 0x03, 0x28, 0xF2,
            /* 0060 */   0x03, 0x29, 0xF9, 0x03, 0x61, 0xC9, 0x03, 0xA3,
            /* 0068 */   0xD6, 0x03, 0x55, 0x81, 0x03, 0xE6, 0xEA, 0x03,
            /* 0070 */   0x63, 0xD9, 0x03, 0x1E, 0xBB, 0x03, 0x27, 0xF4,
            /* 0078 */   0x03, 0x23, 0xDC, 0x03, 0xA8, 0xFC, 0x03, 0x1B,
            /* 0080 */   0xAB, 0x03, 0xE3, 0xDE, 0x03, 0xA8, 0xFF, 0x03,
            /* 0088 */   0x67, 0xFA, 0x03, 0xA3, 0xE1, 0x03, 0xE4, 0xE8,
            /* 0090 */   0x03, 0xDA, 0xA8, 0x03, 0x63, 0xE4, 0x03, 0x95,
            /* 0098 */   0x89, 0x03, 0x96, 0x90, 0x03, 0x23, 0xE7, 0x03,
            /* 00A0 */   0x25, 0xF5, 0x03, 0xE0, 0xD4, 0x03, 0xE3, 0xE9,
            /* 00A8 */   0x03, 0x64, 0xF1, 0x03, 0x21, 0xDE, 0x03, 0xA3,
            /* 00B0 */   0xEC, 0x03, 0x9E, 0xCB, 0x03, 0x15, 0x8F, 0x03,
            /* 00B8 */   0x63, 0xEF, 0x03, 0x53, 0x82, 0x03, 0xD3, 0x82,
            /* 00C0 */   0x03, 0x23, 0xF2, 0x03, 0xD5, 0x91, 0x03, 0x1E,
            /* 00C8 */   0xD1, 0x03, 0xE3, 0xF4, 0x03, 0xA1, 0xE7, 0x03,
            /* 00D0 */   0xA4, 0xFD, 0x03, 0xA3, 0xF7, 0x03, 0x20, 0xE3,
            /* 00D8 */   0x03, 0x63, 0xF9, 0x03, 0x63, 0xFA, 0x03, 0xD6,
            /* 00E0 */   0x9D, 0x03, 0x55, 0x97, 0x03, 0x23, 0xFD, 0x03,
            /* 00E8 */   0x9A, 0xBC, 0x03, 0x20, 0xE9, 0x03, 0xE3, 0xFF,
            /* 00F0 */   0x03, 0x21, 0xF2, 0x03, 0xA0, 0xEB, 0x03, 0xD7,
            /* 00F8 */   0xA9, 0x03, 0x1B, 0xC8, 0x03, 0x1E, 0xDF, 0x03,
            /* 0100 */   0x1C, 0xD1, 0x03, 0xDA, 0xC2, 0x03, 0x9E, 0xE1,
            /* 0108 */   0x03, 0x60, 0xF1, 0x03, 0x9D, 0xDB, 0x03, 0x95,
            /* 0110 */   0x9F, 0x03, 0xA1, 0xFB, 0x03, 0x61, 0xFC, 0x03,
            /* 0118 */   0x97, 0xB0, 0x03, 0x1E, 0xE7, 0x03, 0x55, 0xA2,
            /* 0120 */   0x03, 0xE1, 0xFF, 0x03, 0x16, 0xAB, 0x03, 0xE0,
            /* 0128 */   0xF9, 0x03, 0x11, 0x85, 0x03, 0x1C, 0xDC, 0x03,
            /* 0130 */   0x9E, 0xEC, 0x03, 0x5D, 0xE5, 0x03, 0x1F, 0xF6,
            /* 0138 */   0x03, 0x17, 0xB7, 0x03, 0xD5, 0xA7, 0x03, 0x5A,
            /* 0140 */   0xD0, 0x03, 0x5F, 0xF9, 0x03, 0x1E, 0xF2, 0x03,
            /* 0148 */   0xDF, 0xFA, 0x03, 0x95, 0xAA, 0x03, 0x9F, 0xFC,
            /* 0150 */   0x03, 0x9B, 0xDC, 0x03, 0x1F, 0xFE, 0x03, 0x53,
            /* 0158 */   0x9C, 0x03, 0x5D, 0xEF, 0x03, 0x53, 0x9D, 0x03,
            /* 0160 */   0xD3, 0x9D, 0x03, 0xDB, 0xE0, 0x03, 0xD9, 0xD0,
            /* 0168 */   0x03, 0x15, 0xB0, 0x03, 0x1B, 0xE3, 0x03, 0x1E,
            /* 0170 */   0xFD, 0x03, 0xDC, 0xEC, 0x03, 0x9A, 0xDC, 0x03,
            /* 0178 */   0xD5, 0xB2, 0x03, 0x57, 0xC4, 0x03, 0x5D, 0xF8,
            /* 0180 */   0x03, 0x1D, 0xF9, 0x03, 0x4F, 0x81, 0x03, 0x1C,
            /* 0188 */   0xF2, 0x03, 0x51, 0x93, 0x03, 0x10, 0x8B, 0x03,
            /* 0190 */   0xD6, 0xBF, 0x03, 0x9D, 0xFD, 0x03, 0x55, 0xB8,
            /* 0198 */   0x03, 0x19, 0xDC, 0x03, 0x17, 0xCB, 0x03, 0xD6,
            /* 01A0 */   0xC2, 0x03, 0x9C, 0xF8, 0x03, 0x15, 0xBB, 0x03,
            /* 01A8 */   0x94, 0xB2, 0x03, 0xDA, 0xE8, 0x03, 0xCF, 0x86,
            /* 01B0 */   0x03, 0x5A, 0xEA, 0x03, 0x1C, 0xFD, 0x03, 0xDC,
            /* 01B8 */   0xFD, 0x03, 0x5B, 0xF5, 0x03, 0x97, 0xD1, 0x03,
            /* 01C0 */   0x58, 0xDB, 0x03, 0x9B, 0xF7, 0x03, 0x98, 0xDC,
            /* 01C8 */   0x03, 0x54, 0xB8, 0x03, 0x5A, 0xF0, 0x03, 0x57,
            /* 01D0 */   0xD5, 0x03, 0x55, 0xC3, 0x03, 0x16, 0xCD, 0x03,
            /* 01D8 */   0x4F, 0x8C, 0x03, 0x59, 0xEA, 0x03, 0x57, 0xD8,
            /* 01E0 */   0x03, 0x15, 0xC6, 0x03, 0x16, 0xD0, 0x03, 0x9A,
            /* 01E8 */   0xF6, 0x03, 0x12, 0xAB, 0x03, 0x0F, 0x8F, 0x03,
            /* 01F0 */   0xD5, 0xC8, 0x03, 0x13, 0xB6, 0x03, 0x93, 0xB6,
            /* 01F8 */   0x03, 0x13, 0xB7, 0x03, 0x93, 0xB7, 0x03, 0x95,
            /* 0200 */   0xCB, 0x03, 0xCF, 0x91, 0x03, 0x52, 0xAF, 0x03,
            /* 0208 */   0x1A, 0xFE, 0x03, 0x96, 0xD7, 0x03, 0x55, 0xCE,
            /* 0210 */   0x03, 0x97, 0xE2, 0x03, 0x55, 0xCF, 0x03, 0x99,
            /* 0218 */   0xF7, 0x03, 0x56, 0xDA, 0x03, 0x15, 0xD1, 0x03,
            /* 0220 */   0x97, 0xE5, 0x03, 0x19, 0xFA, 0x03, 0xD8, 0xF0,
            /* 0228 */   0x03, 0x58, 0xF1, 0x03, 0x18, 0xF2, 0x03, 0x98,
            /* 0230 */   0xF2, 0x03, 0x17, 0xE9, 0x03, 0xD1, 0xAC, 0x03,
            /* 0238 */   0x98, 0xF4, 0x03, 0x95, 0xD6, 0x03, 0x0D, 0x85,
            /* 0240 */   0x03, 0x0F, 0x9A, 0x03, 0xD7, 0xEC, 0x03, 0x54,
            /* 0248 */   0xCE, 0x03, 0x55, 0xD9, 0x03, 0xD8, 0xF8, 0x03,
            /* 0250 */   0xD6, 0xE4, 0x03, 0xD7, 0xEF, 0x03, 0x14, 0xD1,
            /* 0258 */   0x03, 0x15, 0xDC, 0x03, 0x18, 0xFC, 0x03, 0x96,
            /* 0260 */   0xE7, 0x03, 0xD0, 0xA8, 0x03, 0xD1, 0xB3, 0x03,
            /* 0268 */   0x8E, 0x94, 0x03, 0x8F, 0x9F, 0x03, 0xD2, 0xBF,
            /* 0270 */   0x03, 0xD7, 0xF5, 0x03, 0x57, 0xF6, 0x03, 0x95,
            /* 0278 */   0xE1, 0x03, 0xD2, 0xC1, 0x03, 0x56, 0xED, 0x03,
            /* 0280 */   0x4F, 0xA2, 0x03, 0x57, 0xF9, 0x03, 0x55, 0xE4,
            /* 0288 */   0x03, 0x13, 0xCF, 0x03, 0x93, 0xCF, 0x03, 0x13,
            /* 0290 */   0xD0, 0x03, 0x93, 0xD0, 0x03, 0x16, 0xF2, 0x03,
            /* 0298 */   0x93, 0xD1, 0x03, 0x13, 0xD2, 0x03, 0x93, 0xD2,
            /* 02A0 */   0x03, 0x13, 0xD3, 0x03, 0xD5, 0xE9, 0x03, 0x13,
            /* 02A8 */   0xD4, 0x03, 0xCF, 0xA7, 0x03, 0x96, 0xF6, 0x03,
            /* 02B0 */   0x52, 0xCA, 0x03, 0x95, 0xEC, 0x03, 0xCD, 0x92,
            /* 02B8 */   0x03, 0x95, 0xED, 0x03, 0x12, 0xCC, 0x03, 0x8F,
            /* 02C0 */   0xAA, 0x03, 0x55, 0xEF, 0x03, 0x11, 0xC2, 0x03,
            /* 02C8 */   0x10, 0xB7, 0x03, 0x56, 0xFC, 0x03, 0x16, 0xFD,
            /* 02D0 */   0x03, 0x15, 0xF2, 0x03, 0x14, 0xE7, 0x03, 0x52,
            /* 02D8 */   0xD0, 0x03, 0x56, 0xFF, 0x03, 0xD6, 0xFF, 0x03,
            /* 02E0 */   0xD5, 0xF4, 0x03, 0x94, 0xE9, 0x03, 0x14, 0xEA,
            /* 02E8 */   0x03, 0x0F, 0xB0, 0x03, 0xCD, 0x98, 0x03, 0x95,
            /* 02F0 */   0xF7, 0x03, 0x54, 0xEC, 0x03, 0x51, 0xC9, 0x03,
            /* 02F8 */   0x4C, 0x8E, 0x03, 0x50, 0xBE, 0x03, 0x55, 0xFA,
            /* 0300 */   0x03, 0x4B, 0x83, 0x03, 0x54, 0xEF, 0x03, 0xD5,
            /* 0308 */   0xFB, 0x03, 0x52, 0xD8, 0x03, 0x15, 0xFD, 0x03,
            /* 0310 */   0x51, 0xCD, 0x03, 0x14, 0xF2, 0x03, 0x95, 0xFE,
            /* 0318 */   0x03, 0xD2, 0xDA, 0x03, 0xD5, 0xFF, 0x03, 0x4B,
            /* 0320 */   0x86, 0x03, 0x0D, 0x9F, 0x03, 0x92, 0xDC, 0x03,
            /* 0328 */   0x4F, 0xB8, 0x03, 0xD3, 0xE9, 0x03, 0x53, 0xEA,
            /* 0330 */   0x03, 0xD3, 0xEA, 0x03, 0x53, 0xEB, 0x03, 0xD3,
            /* 0338 */   0xEB, 0x03, 0x53, 0xEC, 0x03, 0x0F, 0xBB, 0x03,
            /* 0340 */   0xD2, 0xE0, 0x03, 0xCD, 0xA2, 0x03, 0x0B, 0x8A,
            /* 0348 */   0x03, 0x0E, 0xB0, 0x03, 0xD2, 0xE2, 0x03, 0x94,
            /* 0350 */   0xFC, 0x03, 0x14, 0xFD, 0x03, 0x91, 0xD7, 0x03,
            /* 0358 */   0x0D, 0xA5, 0x03, 0x12, 0xE5, 0x03, 0x14, 0xFF,
            /* 0360 */   0x03, 0x94, 0xFF, 0x03, 0xCB, 0x8C, 0x03, 0x12,
            /* 0368 */   0xE7, 0x03, 0xD0, 0xCD, 0x03, 0x8C, 0x9A, 0x03,
            /* 0370 */   0x91, 0xDB, 0x03, 0xD2, 0xE8, 0x03, 0x8E, 0xB5,
            /* 0378 */   0x03, 0xCD, 0xA8, 0x03, 0x4F, 0xC3, 0x03, 0xD2,
            /* 0380 */   0xEA, 0x03, 0x52, 0xEB, 0x03, 0x91, 0xDE, 0x00,
            /* 0388 */   0xFF, 0xFF
        })
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G4T0, Package (0x04)
        {
            0x04070010, 
            "CPU Q-FAN Control", 
            0x80000000, 
            Zero
        })
        Name (G4T1, Package (0x08)
        {
            0x04080011, 
            "CPU Q-FAN Profile", 
            0x00100001, 
            Zero, 
            0x03, 
            "Optimal", 
            "Silent", 
            "Performance"
        })
        Name (G4T2, Package (0x07)
        {
            0x04030017, 
            "CPU T-Control reference", 
            0x40000000, 
            Zero, 
            Zero, 
            One, 
            0x64
        })
        Name (G420, Package (0x04)
        {
            0x04070070, 
            "Chassis Q-FAN Control", 
            0x80000000, 
            Zero
        })
        Name (G421, Package (0x08)
        {
            0x04080071, 
            "Chassis Q-FAN Profile", 
            0x00710001, 
            Zero, 
            0x03, 
            "Optimal", 
            "Silent", 
            "Performance"
        })
        Name (GRP4, Package (0x05)
        {
            G4T0, 
            G4T1, 
            G4T2, 
            G420, 
            G421
        })
        Method (GIT4, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, 0x10))
            {
                Store (GNVS (0x178A), ASB1)
            }
            Else
            {
                If (LEqual (_T_0, 0x11))
                {
                    Store (GNVS (0x2734), ASB1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x17))
                    {
                        Store (GNVS (0x4719), Local0)
                        Add (ShiftLeft (Local0, One), 0x28, ASB1)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x70))
                        {
                            Store (GNVS (0x178D), ASB1)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x71))
                            {
                                Store (GNVS (0x2736), ASB1)
                            }
                            Else
                            {
                                Store (Zero, ASB0)
                            }
                        }
                    }
                }
            }
        }

        Method (SIT4, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, 0x10))
            {
                If (LNotEqual (GNVS (0x178A), Arg1))
                {
                    If (And (Arg2, One))
                    {
                        SNVS (0x178A, Arg1)
                    }

                    Or (ASB0, 0x02, ASB0)
                }
            }
            Else
            {
                If (LEqual (_T_0, 0x11))
                {
                    If (LNotEqual (GNVS (0x2734), Arg1))
                    {
                        If (And (Arg2, One))
                        {
                            SNVS (0x2734, Arg1)
                        }

                        Or (ASB0, 0x02, ASB0)
                    }
                }
                Else
                {
                    If (LEqual (_T_0, 0x70))
                    {
                        If (LNotEqual (GNVS (0x178D), Arg1))
                        {
                            If (And (Arg2, One))
                            {
                                SNVS (0x178D, Arg1)
                            }

                            Or (ASB0, 0x02, ASB0)
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x71))
                        {
                            If (LNotEqual (GNVS (0x2736), Arg1))
                            {
                                If (And (Arg2, One))
                                {
                                    SNVS (0x2736, Arg1)
                                }

                                Or (ASB0, 0x02, ASB0)
                            }
                        }
                        Else
                        {
                            Store (Zero, ASB0)
                        }
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G5T0, Package (0x07)
        {
            0x05080000, 
            "AI Profile", 
            Zero, 
            Zero, 
            0x02, 
            "Auto", 
            Zero
        })
        Name (GRP5, Package (0x01)
        {
            G5T0
        })
        Method (GIT5, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Store (One, ASB1)
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }

        Method (SIT5, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Store (0x03, ASB0)
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G611, Package (0x07)
        {
            0x06020011, 
            "Vcore Voltage", 
            0x20000000, 
            Zero, 
            0x0320, 
            0x0320, 
            0x02
        })
        Name (G663, Package (0x07)
        {
            0x06020063, 
            "+3.3V Voltage", 
            0x20000000, 
            Zero, 
            0x0B9A, 
            0x0294, 
            0x02
        })
        Name (G662, Package (0x07)
        {
            0x06020062, 
            "+5V Voltage", 
            0x20000000, 
            Zero, 
            0x1194, 
            0x03E8, 
            0x02
        })
        Name (G661, Package (0x07)
        {
            0x06020061, 
            "+12V Voltage", 
            0x20000000, 
            Zero, 
            0x27D8, 
            0x0E10, 
            0x02
        })
        Name (G612, Package (0x07)
        {
            0x06030012, 
            "CPU Temperature", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x015E, 
            0x02
        })
        Name (G614, Package (0x07)
        {
            0x06030014, 
            "MB Temperature", 
            0x20000000, 
            Zero, 
            0x01C2, 
            0x012C, 
            0x02
        })
        Name (G613, Package (0x07)
        {
            0x06040013, 
            "CPU Fan Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x19C8, 
            0x02
        })
        Name (G673, Package (0x07)
        {
            0x06040073, 
            "Chassis1 Fan Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x19C8, 
            0x02
        })
        Name (G683, Package (0x07)
        {
            0x06040083, 
            "Chassis2 Fan Speed", 
            0x20000000, 
            Zero, 
            0x0258, 
            0x19C8, 
            0x02
        })
        Name (G6C3, Package (0x07)
        {
            0x060400C3, 
            "Power Fan Speed", 
            0x20000000, 
            Zero, 
            Zero, 
            0x1C20, 
            0x02
        })
        Name (GRP6, Package (0x0A)
        {
            G611, 
            G663, 
            G662, 
            G661, 
            G612, 
            G614, 
            G613, 
            G673, 
            G683, 
            G6C3
        })
        Method (GIT6, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, 0x11))
            {
                Store (RVLT (Zero), ASB1)
            }
            Else
            {
                If (LEqual (_T_0, 0x63))
                {
                    Store (RVLT (One), ASB1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x62))
                    {
                        Store (RVLT (0x02), ASB1)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x61))
                        {
                            Store (RVLT (0x03), ASB1)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x12))
                            {
                                Store (^^SIOR.HWT1 (), ASB1)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x14))
                                {
                                    Store (^^SIOR.HWT0 (), ASB1)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x13))
                                    {
                                        Store (^^SIOR.HWF1 (), ASB1)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x73))
                                        {
                                            Store (^^SIOR.HWF0 (), ASB1)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x83))
                                            {
                                                Store (^^SIOR.HWF3 (), ASB1)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0xC3))
                                                {
                                                    Store (^^SIOR.HWF2 (), ASB1)
                                                }
                                                Else
                                                {
                                                    Store (Zero, ASB0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SIT6, 3, NotSerialized)
        {
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (G9T0, Package (0x0B)
        {
            0x09080000, 
            "AI Overclocking", 
            Zero, 
            One, 
            0x06, 
            "Manual", 
            "Auto", 
            "Standard", 
            Zero, 
            "N.O.S.", 
            Zero
        })
        Name (GRP9, Package (0x01)
        {
            G9T0
        })
        Method (GIT9, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Store (GNVS (0x34C5), ASB1)
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }

        Method (SIT9, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                If (LNotEqual (GNVS (0x34C5), Arg1))
                {
                    If (And (Arg2, One))
                    {
                        SNVS (0x34C5, Arg1)
                    }

                    Or (ASB0, 0x02, ASB0)
                }
            }
            Else
            {
                Store (Zero, ASB0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (GBT0, Package (0x07)
        {
            0x0B060001, 
            "System Performance", 
            Zero, 
            Zero, 
            0x03, 
            One, 
            0x04
        })
        Name (GBT1, Package (0x07)
        {
            0x0B060002, 
            "System Performance Control", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GBT2, Package (0x07)
        {
            0x0B060003, 
            "System GUI", 
            0x04, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GBT3, Package (0x07)
        {
            0x0B050006, 
            "AI Gear push up", 
            Zero, 
            One, 
            Zero, 
            One, 
            0x1F
        })
        Name (GBT4, Package (0x07)
        {
            0x0B050007, 
            "AI Gear pop down", 
            Zero, 
            One, 
            Zero, 
            One, 
            0x33
        })
        Name (GBT5, Package (0x07)
        {
            0x0B060010, 
            "Level Switch", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GBT7, Package (0x07)
        {
            0x0B060021, 
            "AI Gear NB voltage", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (GBT8, Package (0x07)
        {
            0x0B060022, 
            "AI Gear load line select", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (GBT9, Package (0x07)
        {
            0x0B060023, 
            "AI Gear CPU voltage", 
            Zero, 
            Zero, 
            Zero, 
            One, 
            0x02
        })
        Name (GRPB, Package (0x09)
        {
            GBT0, 
            GBT1, 
            GBT2, 
            GBT3, 
            GBT4, 
            GBT5, 
            GBT7, 
            GBT8, 
            GBT9
        })
        Method (GITB, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, One))
            {
                Store (And (DerefOf (Index (GBT0, 0x02)), 0xFFFF), ASB1)
            }
            Else
            {
                If (LEqual (_T_0, 0x02))
                {
                    Store (DerefOf (Index (GBT1, 0x02)), ASB1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x03))
                    {
                        Store (DerefOf (Index (GBT2, 0x02)), ASB1)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x06))
                        {
                            Store (GDEF (Zero), ASB1)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x07))
                            {
                                Store (GDEF (0x05), ASB1)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x20))
                                {
                                    Store (GDEF (0x03), ASB1)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x21))
                                    {
                                        Store (GDEF (One), ASB1)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x22))
                                        {
                                            Store (GDEF (0x04), ASB1)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x23))
                                            {
                                                Store (GDEF (0x02), ASB1)
                                            }
                                            Else
                                            {
                                                Store (Zero, ASB0)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SITB, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, One))
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Store (And (Arg2, 0xFFFF), _T_1)
                If (LEqual (_T_1, Zero))
                {
                    If (LEqual (GNVS (0x34C5), Zero))
                    {
                        Store (COMS (Arg1, ASB0), ASB0)
                    }
                    Else
                    {
                        Store (And (DerefOf (Index (GBT0, 0x02)), 0xFFFF), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (Local0, PAR0)
                        }
                    }
                }
                Else
                {
                    If (LEqual (_T_1, One))
                    {
                        And (Arg1, 0xFFFF, Local0)
                        Store (Local0, Index (GBT0, 0x02))
                        SICL (Local0)
                        Store (Local0, PAR0)
                    }
                    Else
                    {
                        Store (Zero, ASB0)
                    }
                }
            }
            Else
            {
                If (LEqual (_T_0, 0x02))
                {
                    Store (And (Arg1, 0xFF), Local0)
                    If (LEqual (STCG (Local0), One))
                    {
                        Store (Local0, Index (GBT1, 0x02))
                    }
                    Else
                    {
                        Store (Zero, ASB0)
                    }
                }
                Else
                {
                    If (LEqual (_T_0, 0x06))
                    {
                        Add (Arg1, DerefOf (Index (GBT3, 0x04)), Local0)
                        AGPU (Local0, DerefOf (Index (GBT3, 0x05)))
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x07))
                        {
                            Add (Arg1, DerefOf (Index (GBT4, 0x04)), Local0)
                            AGPD (Local0, DerefOf (Index (GBT4, 0x05)))
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x10))
                            {
                                Store (And (Arg1, 0xFF), Local0)
                                AGLS (Local0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x20))
                                {
                                    Store (And (Arg1, 0xFF), Local0)
                                    AGDV (Local0)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x21))
                                    {
                                        Store (And (Arg1, 0xFF), Local0)
                                        AGNV (Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x22))
                                        {
                                            Store (And (Arg1, 0xFF), Local0)
                                            AGLI (Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x23))
                                            {
                                                Store (And (Arg1, 0xFF), Local0)
                                                AGCV (Local0)
                                            }
                                            Else
                                            {
                                                Store (Zero, ASB0)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Notify (\_SB.PCI0.SBRG.ASOC, 0x05)
            If (LEqual (\_SB.PCI0.SBRG.ASOC.AIGC, One))
            {
                \_SB.PCI0.SBRG.ASOC.GITE (0x0E060001)
                \_SB.PCI0.SBRG.ASOC.SICL (Or (0x8010, \_SB.PCI0.SBRG.ASOC.ASB1))
            }

            \_SB.PCI0.SBRG.ASOC.RCAS ()
        }
    }

    OperationRegion (GPS0, SystemIO, GPBS, 0x40)
    Field (GPS0, ByteAcc, NoLock, Preserve)
    {
        Offset (0x0C), 
        GP00,   1, 
            ,   20, 
        PWTH,   1, 
        Offset (0x38), 
        GP32,   1, 
        Offset (0x3A), 
        NBPS,   1
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (GET1, Package (0x07)
        {
            0x0E060001, 
            "OC Status", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET2, Package (0x07)
        {
            0x0E0A0011, 
            "ICPU Value", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET3, Package (0x07)
        {
            0x0E020012, 
            "VCPU Value", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET4, Package (0x07)
        {
            0x0E0B0013, 
            "PCPU Value", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET5, Package (0x07)
        {
            0x0E0A0014, 
            "OC Threshold1", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET6, Package (0x07)
        {
            0x0E0A0015, 
            "OC Threshold2", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GET7, Package (0x07)
        {
            0x0E0A0016, 
            "OC Threshold3", 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (GRPE, Package (0x07)
        {
            GET1, 
            GET2, 
            GET3, 
            GET4, 
            GET5, 
            GET6, 
            GET7
        })
        Name (ADP3, Package (0x0B)
        {
            0x40, 
            0xF5, 
            0xF1, 
            0x8B, 
            0x96, 
            0xEE, 
            0xEF, 
            0xF0, 
            0xDD, 
            0xDF, 
            0x03
        })
        Name (OCST, Buffer (0x04)
        {
             0x00, 0x01, 0x02, 0x03
        })
        Method (GITE, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, One))
            {
                Store (DerefOf (Index (OCST, RBYT (DerefOf (Index (ADP3, Zero)), 
                    DerefOf (Index (ADP3, One))))), ASB1)
            }
            Else
            {
                If (LEqual (_T_0, 0x11))
                {
                    Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                        0x02))), ASB1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x12))
                    {
                        Store (RWRD (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                            0x03))), ASB1)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x13))
                        {
                            Store (RWRD (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                0x04))), ASB1)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x14))
                            {
                                Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                    0x05))), ASB1)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x15))
                                {
                                    Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                        0x06))), ASB1)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x16))
                                    {
                                        Store (RBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 
                                            0x07))), ASB1)
                                    }
                                    Else
                                    {
                                        Store (Zero, ASB0)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (SITE, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, 0x14))
            {
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x05
                    )), Arg1)
            }
            Else
            {
                If (LEqual (_T_0, 0x15))
                {
                    WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x06
                        )), Arg1)
                }
                Else
                {
                    If (LEqual (_T_0, 0x16))
                    {
                        WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x07
                            )), Arg1)
                    }
                    Else
                    {
                        Store (Zero, ASB0)
                    }
                }
            }
        }

        Name (OMNB, Buffer (0x02)
        {
             0x00, 0x00
        })
        Name (CDTB, Buffer (0x10)
        {
            /* 0000 */   0x02, 0x03, 0x05, 0x09, 0x04, 0x06, 0x0A, 0x12,
            /* 0008 */   0x08, 0x0C, 0x14, 0x24, 0x10, 0x18, 0x28, 0x48
        })
        Name (FSBL, Package (0x01)
        {
            Package (0x04)
            {
                0x53, 
                0x85, 
                0x53, 
                0x85
            }
        })
        Name (OMST, Buffer (0x08)
        {
             0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x02, 0x03
        })
        Name (DFSB, Buffer (0x08)
        {
             0x00, 0x00, 0x0A, 0x0A, 0x03, 0x00, 0x01, 0x01
        })
        Name (OLTB, Buffer (0x14)
        {
            /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0010 */   0x00, 0x00, 0x00, 0x00
        })
        Name (LDLE, Package (0x04)
        {
            Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x03)
            {
                0x10, 
                0x14, 
                Zero
            }, 

            Package (0x03)
            {
                0x10, 
                0x14, 
                Zero
            }
        })
        Name (CUVR, Package (0x04)
        {
            Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x03)
            {
                Zero, 
                0x3E, 
                Zero
            }, 

            Package (0x03)
            {
                0x3E, 
                0x3F, 
                Zero
            }
        })
        Name (CLKB, Buffer (0x24)
        {
            /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0010 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0018 */   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0020 */   0x00, 0x00, 0x00, 0x00
        })
        CreateByteField (CLKB, Zero, CB00)
        CreateByteField (CLKB, One, CB01)
        CreateByteField (CLKB, 0x0B, CB11)
        CreateByteField (CLKB, 0x0C, CB12)
        CreateByteField (CLKB, 0x14, CB20)
        CreateByteField (CLKB, 0x16, CB22)
        CreateByteField (CLKB, 0x17, CB23)
        CreateByteField (CLKB, 0x18, CB24)
        CreateByteField (CLKB, 0x19, CB25)
        CreateByteField (CLKB, 0x1D, CB29)
        Name (FSBT, Zero)
        Name (AIGC, Zero)
        Name (PICL, One)
        Name (LVIC, Zero)
        Name (CDIV, Zero)
        Method (STCG, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Store (RBLK (0xD2, Zero, 0x1A), CLKB)
                If (LNotEqual (GNVS (0x34C5), Zero))
                {
                    Store (Or (CB00, 0x20), CB00)
                    Store (Or (CB01, 0x10), CB01)
                    Store (And (CB20, 0xFB), CB20)
                    Store (And (CB22, 0xF7), CB22)
                    Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), 0x02)), 
                        CB11)
                    Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), 0x03)), 
                        CB12)
                }

                WBLK (0xD2, Zero, 0x1A, CLKB)
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    Store (RBLK (0xD2, Zero, 0x21), CLKB)
                    If (Or (And (LEqual (DerefOf (Index (OMNB, Zero)), Zero), 
                        LEqual (DerefOf (Index (OMNB, One)), Zero)), LNotEqual (DerefOf (
                        Index (OMNB, Zero)), CB11)))
                    {
                        Store (CB11, Index (OMNB, Zero))
                        Store (CB12, Index (OMNB, One))
                    }

                    Store (DerefOf (Index (CDTB, And (CB29, 0x0F))), CDIV)
                    Store (Zero, FSBT)
                    If (LEqual (GNVS (0x34C5), Zero))
                    {
                        SVOT (Zero, Zero, CB12)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (COMS, 2, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFFFF), _T_0)
            If (LEqual (_T_0, 0x8000))
            {
                Return (And (Arg1, 0xFB, Arg1))
            }
            Else
            {
                If (LEqual (_T_0, 0x4000))
                {
                    If (LEqual (DerefOf (Index (OMST, Zero)), One))
                    {
                        Return (And (Arg1, 0xFB, Arg1))
                    }
                }
                Else
                {
                    If (LEqual (_T_0, Zero))
                    {
                        If (LEqual (DerefOf (Index (OMST, One)), One))
                        {
                            Return (And (Arg1, 0xFB, Arg1))
                        }
                    }
                    Else
                    {
                        If (LEqual (_T_0, One))
                        {
                            If (LEqual (DerefOf (Index (OMST, 0x02)), One))
                            {
                                Return (And (Arg1, 0xFB, Arg1))
                            }
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x02))
                            {
                                If (LEqual (DerefOf (Index (OMST, 0x03)), One))
                                {
                                    Return (And (Arg1, 0xFB, Arg1))
                                }
                            }
                            Else
                            {
                                Return (Or (Arg1, 0x04, Arg1))
                            }
                        }
                    }
                }
            }

            Return (Or (Arg1, 0x04, Arg1))
        }

        Method (GDEF, 1, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                If (LEqual (GNVS (0x34C5), Zero))
                {
                    Multiply (0x04, GNVS (0x34C5), Local0)
                }
                Else
                {
                    Multiply (0x04, One, Local0)
                }

                Return (DerefOf (Index (DFSB, Add (LVIC, Local0))))
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    Return (GVOT (One, LVIC))
                }
                Else
                {
                    If (LEqual (_T_0, 0x02))
                    {
                        Return (GVOT (0x02, LVIC))
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x03))
                        {
                            Return (GVOT (0x03, LVIC))
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x04))
                            {
                                Return (GVOT (0x04, LVIC))
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x05))
                                {
                                    If (LEqual (GNVS (0x34C5), Zero))
                                    {
                                        Multiply (0x04, GNVS (0x34C5), Local0)
                                    }
                                    Else
                                    {
                                        Multiply (0x04, One, Local0)
                                    }

                                    Return (DerefOf (Index (DFSB, Add (LVIC, Local0))))
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }
                }
            }
        }

        Method (CAMN, 1, NotSerialized)
        {
            If (LEqual (GNVS (0x34C5), Zero))
            {
                And (DerefOf (Index (OMNB, Zero)), 0x3F, Local0)
                Store (DerefOf (Index (OMNB, One)), Local1)
                Or (ShiftLeft (Local1, 0x03, Local2), ShiftLeft (ShiftRight (DerefOf (Index (OMNB, 
                    Zero)), 0x06, Local2), One, Local2), Local1)
            }
            Else
            {
                And (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), Zero)), 
                    0x3F, Local0)
                Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), One)), 
                    Local1)
                Or (ShiftLeft (Local1, 0x03, Local2), ShiftLeft (ShiftRight (DerefOf (Index (DerefOf (
                    Index (FSBL, FSBT)), Zero)), 0x06, Local2), One, Local2), Local1)
            }

            Store (GNVS (0xA7B0), Local2)
            Multiply (0x0598, Local1, Local4)
            Divide (Local4, 0x64, Local5, Local3)
            Divide (Local3, Local0, Local5, Local3)
            Store (CDIV, Local4)
            Multiply (Arg0, Local4, Local7)
            Multiply (Multiply (Local7, Local0, Local0), 0x64, Local0)
            Divide (Local0, 0x0598, Local5, Local0)
            ShiftRight (Local0, 0x03, Local0)
            If (LGreater (Local0, 0xFF))
            {
                Return (0xFF)
            }
            Else
            {
                Return (Local0)
            }
        }

        Method (AGPU, 2, NotSerialized)
        {
            If (LGreater (Arg0, Zero))
            {
                Store (CAMN (CAFS (One, Arg0, Arg1)), Local0)
                SVOT (Zero, LVIC, Local0)
            }

            Return (One)
        }

        Method (AGPD, 2, NotSerialized)
        {
            If (LGreater (Arg0, Zero))
            {
                SVOT (Zero, LVIC, CAMN (CAFS (Zero, Arg0, Arg1)))
            }

            Return (One)
        }

        Method (AGLS, 1, NotSerialized)
        {
            Store (Arg0, LVIC)
            Return (One)
        }

        Method (AGDV, 1, NotSerialized)
        {
            SVOT (0x03, LVIC, Arg0)
            Return (One)
        }

        Method (AGNV, 1, NotSerialized)
        {
            SVOT (One, LVIC, Arg0)
            Return (One)
        }

        Method (AGLI, 1, NotSerialized)
        {
            SVOT (0x04, LVIC, Arg0)
            Return (One)
        }

        Method (AGCV, 1, NotSerialized)
        {
            SVOT (0x02, LVIC, Arg0)
            Return (One)
        }

        Method (SVOT, 3, NotSerialized)
        {
            Add (Arg0, Multiply (Arg1, 0x05), Local0)
            Store (Arg2, Index (OLTB, Local0))
            Return (One)
        }

        Method (GVOT, 2, NotSerialized)
        {
            Add (Arg0, Multiply (Arg1, 0x05), Local0)
            Store (DerefOf (Index (OLTB, Local0)), Local1)
            Return (Local1)
        }

        Method (CAFS, 3, NotSerialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (And (Arg0, 0xFF), _T_0)
            If (LEqual (_T_0, Zero))
            {
                Multiply (Arg1, Arg2, Local0)
                Subtract (0x64, Local0, Local0)
                Multiply (GNVS (0xA7B0), Local0, Local0)
                Divide (Local0, 0x64, Local5, Local0)
            }
            Else
            {
                If (LEqual (_T_0, One))
                {
                    Multiply (Arg1, Arg2, Local0)
                    Add (Local0, 0x64, Local0)
                    Multiply (GNVS (0xA7B0), Local0, Local0)
                    Divide (Local0, 0x64, Local5, Local0)
                }
            }

            Return (Local0)
        }

        Method (SICL, 1, NotSerialized)
        {
            If (And (Arg0, 0x8000))
            {
                Store (One, AIGC)
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (And (Arg0, 0xFF), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    ITAT ()
                }
                Else
                {
                    If (LEqual (_T_0, 0x10))
                    {
                        SPIC (Zero)
                        Store (Zero, PICL)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x11))
                        {
                            SPIC (One)
                            Store (One, PICL)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x12))
                            {
                                SPIC (0x02)
                                Store (0x02, PICL)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x13))
                                {
                                    SPIC (0x03)
                                    Store (0x03, PICL)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                    }
                }
            }
            Else
            {
                Store (Zero, AIGC)
                If (And (Arg0, 0x4000))
                {
                    SPIC (Zero)
                    Store (Zero, PICL)
                }
                Else
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (And (Arg0, 0xFF), _T_1)
                    If (LEqual (_T_1, Zero))
                    {
                        SPIC (One)
                        Store (One, PICL)
                    }
                    Else
                    {
                        If (LEqual (_T_1, One))
                        {
                            SPIC (0x02)
                            Store (0x02, PICL)
                        }
                        Else
                        {
                            If (LEqual (_T_1, 0x02))
                            {
                                SPIC (0x03)
                                Store (0x03, PICL)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }
            }

            Return (One)
        }

        Method (SPIC, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, PICL))
            {
                Store (GVOT (One, Arg0), NBPS)
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x08
                    )), DerefOf (Index (DerefOf (Index (CUVR, Arg0)), GVOT (0x02, Arg0)
                    )))
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x09
                    )), DerefOf (Index (DerefOf (Index (LDLE, Arg0)), GVOT (0x04, Arg0)
                    )))
                If (LGreaterEqual (Arg0, 0x02))
                {
                    Store (Zero, PWTH)
                }
                Else
                {
                    Store (One, PWTH)
                }

                If (LEqual (AIGC, Zero))
                {
                    SFSB (Arg0)
                }
            }
            Else
            {
                If (LEqual (AIGC, Zero))
                {
                    SFSB (Arg0)
                }

                If (LGreaterEqual (Arg0, 0x02))
                {
                    Store (Zero, PWTH)
                }
                Else
                {
                    Store (One, PWTH)
                }

                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x09
                    )), DerefOf (Index (DerefOf (Index (LDLE, Arg0)), GVOT (0x04, Arg0)
                    )))
                WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x08
                    )), DerefOf (Index (DerefOf (Index (CUVR, Arg0)), GVOT (0x02, Arg0)
                    )))
                Store (GVOT (One, Arg0), NBPS)
            }

            RCAS ()
        }

        Name (PSLV, Package (0x04)
        {
            Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x03)
            {
                Zero, 
                Zero, 
                0xFF
            }, 

            Package (0x03)
            {
                Zero, 
                0xFF, 
                0xFF
            }, 

            Package (0x03)
            {
                0xFF, 
                0xFF, 
                0xFF
            }
        })
        Method (SFSB, 1, NotSerialized)
        {
            Store (RBLK (0xD2, Zero, 0x1A), CLKB)
            Store (And (CB00, 0xDF), CB00)
            Store (Or (CB01, 0x10), CB01)
            Store (And (CB20, 0xFB), CB20)
            Store (And (CB22, 0xF7), CB22)
            Store (CB11, Local1)
            Store (CB12, Local2)
            If (LEqual (GNVS (0x34C5), Zero))
            {
                If (LEqual (DerefOf (Index (OMST, Add (Arg0, 0x04))), 
                    Zero))
                {
                    Store (DerefOf (Index (OMNB, Zero)), CB11)
                    Store (DerefOf (Index (OMNB, One)), CB12)
                }
                Else
                {
                    Store (GVOT (Zero, DerefOf (Index (OMST, Add (Arg0, 0x04)
                        ))), CB12)
                }

                Store (Zero, Local5)
            }
            Else
            {
                If (LEqual (Arg0, One))
                {
                    Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), 0x02)), 
                        CB11)
                    Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), 0x03)), 
                        CB12)
                }
                Else
                {
                    Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), Zero)), 
                        CB11)
                    Store (GVOT (Zero, Arg0), CB12)
                }

                Store (Zero, Local5)
            }

            Store (CB12, DBG8)
            WBLK (0xD2, Zero, 0x1A, CLKB)
            WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x05
                )), DerefOf (Index (DerefOf (Index (PSLV, Local5)), Zero)))
            WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x06
                )), DerefOf (Index (DerefOf (Index (PSLV, Local5)), One)))
            WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x07
                )), DerefOf (Index (DerefOf (Index (PSLV, Local5)), 0x02)))
            Sleep (0x03E8)
        }

        Method (ITAT, 0, NotSerialized)
        {
            Store (RBLK (0xD2, Zero, 0x1A), CLKB)
            If (LEqual (GNVS (0x34C5), Zero))
            {
                Store (And (CB00, 0xDF), CB00)
                Store (And (CB01, 0xEF), CB01)
                Store (Or (CB20, 0x04), CB20)
                Store (Or (CB22, 0x08), CB22)
                Store (DerefOf (Index (OMNB, One)), CB12)
                Store (DerefOf (Index (OMNB, One)), CB24)
                Store (GVOT (Zero, 0x03), CB23)
                Store (GVOT (Zero, 0x03), CB25)
                Store (Zero, Local0)
            }
            Else
            {
                Store (And (CB00, 0xDF), CB00)
                Store (And (CB01, 0xEF), CB01)
                Store (Or (CB20, 0x04), CB20)
                Store (Or (CB22, 0x08), CB22)
                Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), Zero)), 
                    CB11)
                Store (DerefOf (Index (DerefOf (Index (FSBL, FSBT)), One)), 
                    CB24)
                Store (GVOT (Zero, 0x02), CB23)
                Store (GVOT (Zero, 0x03), CB25)
                Subtract (GVOT (Zero, Zero), One, CB12)
                Store (One, Local0)
            }

            WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x05
                )), DerefOf (Index (DerefOf (Index (PSLV, Local0)), Zero)))
            WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x06
                )), DerefOf (Index (DerefOf (Index (PSLV, Local0)), One)))
            WBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x07
                )), DerefOf (Index (DerefOf (Index (PSLV, Local0)), 0x02)))
            Sleep (0x03E8)
            WBLK (0xD2, Zero, 0x1A, CLKB)
        }

        Method (RCAS, 0, NotSerialized)
        {
            SBYT (DerefOf (Index (ADP3, Zero)), DerefOf (Index (ADP3, 0x0A
                )))
        }
    }

    OperationRegion (_SB.PCI0.SBRG.PIX0, PCI_Config, 0x60, 0x0C)
    Field (\_SB.PCI0.SBRG.PIX0, ByteAcc, NoLock, Preserve)
    {
        PIRA,   8, 
        PIRB,   8, 
        PIRC,   8, 
        PIRD,   8, 
        Offset (0x08), 
        PIRE,   8, 
        PIRF,   8, 
        PIRG,   8, 
        PIRH,   8
    }

    Scope (_SB)
    {
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        CreateWordField (BUFA, One, IRA0)
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRA, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRA, 0x80, PIRA)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRA, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRA)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRB, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRB, 0x80, PIRB)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRB, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRB)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRC, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRC, 0x80, PIRC)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRC, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRC)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRD, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRD, 0x80, PIRD)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRD, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRD)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRE, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRE, 0x80, PIRE)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRE, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRF, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRF, 0x80, PIRF)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRF, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRG, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRG, 0x80, PIRG)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRG, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                And (PIRH, 0x80, Local0)
                If (Local0)
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (PIRH, 0x80, PIRH)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (PIRH, 0x0F, Local0)
                ShiftLeft (One, Local0, IRA0)
                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Decrement (Local0)
                Store (Local0, PIRH)
            }
        }
    }

    Scope (_SB)
    {
        Name (XCPD, Zero)
        Name (XNPT, One)
        Name (XCAP, 0x02)
        Name (XDCP, 0x04)
        Name (XDCT, 0x08)
        Name (XDST, 0x0A)
        Name (XLCP, 0x0C)
        Name (XLCT, 0x10)
        Name (XLST, 0x12)
        Name (XSCP, 0x14)
        Name (XSCT, 0x18)
        Name (XSST, 0x1A)
        Name (XRCT, 0x1C)
        Mutex (MUTE, 0x00)
        Method (RBPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RWPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (RDPE, 1, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Release (MUTE)
            Return (XCFG)
        }

        Method (WBPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x0FFF)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, One)
            Field (PCFG, ByteAcc, NoLock, Preserve)
            {
                XCFG,   8
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WWPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFE, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x02)
            Field (PCFG, WordAcc, NoLock, Preserve)
            {
                XCFG,   16
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (WDPE, 2, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            Store (Arg1, XCFG)
            Release (MUTE)
        }

        Method (RWDP, 3, NotSerialized)
        {
            Acquire (MUTE, 0x03E8)
            And (Arg0, 0xFFFFFFFC, Arg0)
            Add (Arg0, PCIB, Local0)
            OperationRegion (PCFG, SystemMemory, Local0, 0x04)
            Field (PCFG, DWordAcc, NoLock, Preserve)
            {
                XCFG,   32
            }

            And (XCFG, Arg2, Local1)
            Or (Local1, Arg1, XCFG)
            Release (MUTE)
        }

        Method (RPME, 1, NotSerialized)
        {
            Add (Arg0, 0x84, Local0)
            Store (RDPE (Local0), Local1)
            If (LEqual (Local1, Ones))
            {
                Return (Zero)
            }
            Else
            {
                If (LAnd (Local1, 0x00010000))
                {
                    WDPE (Local0, And (Local1, 0x00010000))
                    Return (One)
                }

                Return (Zero)
            }
        }
    }

    OperationRegion (SMRG, SystemIO, 0x0400, 0x10)
    Field (SMRG, ByteAcc, NoLock, Preserve)
    {
        HSTS,   8, 
        SSTS,   8, 
        HSTC,   8, 
        HCMD,   8, 
        HADR,   8, 
        HDT0,   8, 
        HDT1,   8, 
        BLKD,   8
    }

    Field (SMRG, ByteAcc, NoLock, Preserve)
    {
        Offset (0x05), 
        HDTW,   16
    }

    Method (SCMD, 4, Serialized)
    {
        Store (0x05, Local0)
        While (Decrement (Local0))
        {
            Store (0xFFFF, Local1)
            While (LAnd (HSTS, Decrement (Local1)))
            {
                Store (0xFE, HSTS)
                Stall (0x0A)
            }

            Store (HSTC, Local2)
            Store (Arg0, HADR)
            Store (Arg1, HCMD)
            Store (Arg2, HDTW)
            Store (Arg3, HSTC)
            Store (0xFFFF, Local1)
            While (Decrement (Local1))
            {
                If (And (HSTS, 0x0C))
                {
                    Store (One, Local1)
                }

                If (LEqual (And (HSTS, 0x03), 0x02))
                {
                    Return (HDTW)
                }

                Stall (0x0A)
            }

            Store (0x42, HSTC)
            Store (0xFFFF, Local1)
            While (Decrement (Local1))
            {
                If (And (HSTS, 0x10))
                {
                    Store (One, Local1)
                }

                Stall (0x0A)
            }

            Store (Zero, HSTC)
        }

        Return (Ones)
    }

    Method (SBYT, 2, NotSerialized)
    {
        SCMD (Arg0, Arg1, Zero, 0x44)
    }

    Method (WBYT, 3, NotSerialized)
    {
        SCMD (Arg0, Arg1, Arg2, 0x48)
    }

    Method (WWRD, 3, NotSerialized)
    {
        SCMD (Arg0, Arg1, Arg2, 0x4C)
    }

    Method (RSBT, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (And (SCMD (Arg0, Arg1, Zero, 0x44), 0xFF))
    }

    Method (RBYT, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (And (SCMD (Arg0, Arg1, Zero, 0x48), 0xFF))
    }

    Method (RWRD, 2, NotSerialized)
    {
        Or (Arg0, One, Arg0)
        Return (SCMD (Arg0, Arg1, Zero, 0x4C))
    }

    Method (RBLK, 3, NotSerialized)
    {
        Or (Arg0, One, Local0)
        SCMD (Local0, Arg1, Arg2, 0x54)
        Store (HSTC, Local0)
        Store (HDT0, Local0)
        Add (Local0, One, Local7)
        Name (RBUF, Buffer (Local7) {})
        Store (Zero, Local1)
        While (Local0)
        {
            Store (BLKD, Index (RBUF, Local1))
            Decrement (Local0)
            Increment (Local1)
        }

        Return (RBUF)
    }

    Method (WBLK, 4, NotSerialized)
    {
        Store (HSTC, Local0)
        Store (Zero, Local0)
        While (LLessEqual (Local0, Arg2))
        {
            Store (DerefOf (Index (Arg3, Local0)), BLKD)
            Increment (Local0)
        }

        And (Arg0, 0xFE, Local0)
        SCMD (Local0, Arg1, Arg2, 0x54)
    }

    Scope (_SB.PCI0.SBRG.SIOR)
    {
        Name (SNCT, Zero)
        Name (E1BK, Zero)
        Method (HWV0, 0, NotSerialized)
        {
            Return (Multiply (VCOR, 0x08))
        }

        Method (HWV1, 0, NotSerialized)
        {
            Return (Multiply (V12V, 0x08))
        }

        Method (HWV3, 0, NotSerialized)
        {
            Return (Multiply (V33V, 0x08))
        }

        Method (HWV4, 0, NotSerialized)
        {
            Return (Multiply (V50V, 0x08))
        }

        Method (HWT0, 0, NotSerialized)
        {
            Store (MBTE, Local1)
            If (And (Local1, 0x80))
            {
                Or (Local1, 0xFFFFFF00, Local1)
            }

            Multiply (Local1, 0x0A, Local1)
            Return (Local1)
        }

        Method (HWT1, 0, NotSerialized)
        {
            ENFG (0x0C)
            If (LNotEqual (CRE1, E1BK))
            {
                If (LEqual (E1BK, Zero))
                {
                    Store (CRE1, E1BK)
                }
                Else
                {
                    Store (E1BK, CRE1)
                }
            }

            EXFG ()
            If (LLess (SNCT, 0x02))
            {
                Store (One, BSEL)
                Store (TSR1, Local3)
                Store (Zero, BSEL)
                Add (MBTE, One, Local1)
                XOr (Local1, 0x80, Local1)
                XOr (Local3, 0x80, Local3)
                If (LGreater (Local1, Local3))
                {
                    ENFG (0x0C)
                    If (LAnd (CRE0, 0xF0))
                    {
                        Subtract (Local1, Local3, Local3)
                        ShiftRight (Local3, One, Local3)
                        Add (Local3, 0x03, Local3)
                        Add (CRE1, Local3, CRE1)
                        Store (CRE1, E1BK)
                        Sleep (0x32)
                    }

                    Increment (SNCT)
                    EXFG ()
                }
            }

            Store (One, BSEL)
            Store (TSR1, Local1)
            If (And (Local1, 0x80))
            {
                Or (Local1, 0xFFFFFF00, Local1)
            }

            Multiply (Local1, 0x0A, Local1)
            Store (TSR2, Local2)
            Multiply (Local2, 0x05, Local2)
            Add (Local1, Local2, Local1)
            Return (Local1)
        }

        Method (HWT2, 0, NotSerialized)
        {
            Store (0x02, BSEL)
            Store (TSR1, Local1)
            If (And (Local1, 0x80))
            {
                Or (Local1, 0xFFFFFF00, Local1)
            }

            Multiply (Local1, 0x0A, Local1)
            Store (TSR2, Local2)
            Multiply (Local2, 0x05, Local2)
            Add (Local1, Local2, Local1)
            Return (Local1)
        }

        OperationRegion (DBGE, SystemIO, 0x80, 0x04)
        Field (DBGE, WordAcc, NoLock, Preserve)
        {
            DBGG,   22
        }

        Method (HWF0, 0, NotSerialized)
        {
            Store (FAN1, Local0)
            Store (Zero, BSEL)
            And (FD21, 0x20, Local1)
            ShiftRight (Local1, 0x05, Local1)
            Multiply (Local1, 0x04, Local1)
            And (FDR1, 0x30, Local2)
            ShiftRight (Local2, 0x04, Local2)
            Add (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x05, Local3)
                Store (FD21, Local4)
                And (Local4, 0xDF, Local4)
                Or (Local3, Local4, FD21)
                Store (FDR1, Local4)
                And (Local4, 0xCF, Local4)
                ShiftLeft (Local2, 0x04, Local2)
                Or (Local4, One, Local4)
                Or (Local4, Local2, FDR1)
                Sleep (0x32)
                Store (FAN1, Local0)
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    Add (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x05, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xDF, Local4)
                    Or (Local3, Local4, FD21)
                    Store (FDR1, Local4)
                    And (Local4, 0xCF, Local4)
                    ShiftLeft (Local2, 0x04, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                }
                Else
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x05, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xDF, Local4)
                    Or (Local3, Local4, FD21)
                    Store (FDR1, Local4)
                    And (Local4, 0xCF, Local4)
                    ShiftLeft (Local2, 0x04, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                    Sleep (0x32)
                    Store (FAN1, Local0)
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Method (HWF1, 0, NotSerialized)
        {
            Store (Zero, BSEL)
            Store (FAN2, Local0)
            And (FD21, 0x40, Local1)
            ShiftRight (Local1, 0x06, Local1)
            Multiply (Local1, 0x04, Local1)
            And (FDR1, 0xC0, Local2)
            ShiftRight (Local2, 0x06, Local2)
            Add (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x06, Local3)
                Store (FD21, Local4)
                And (Local4, 0xBF, Local4)
                Or (Local3, Local4, FD21)
                Store (FDR1, Local4)
                And (Local4, 0x3F, Local4)
                ShiftLeft (Local2, 0x06, Local2)
                Or (Local4, One, Local4)
                Or (Local4, Local2, FDR1)
                Sleep (0x32)
                Store (Zero, BSEL)
                Store (FAN2, Local0)
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LLess (Local0, 0x1E), LGreater (Local1, 0x02)))
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x06, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xBF, Local4)
                    Or (Local3, Local4, FD21)
                    Store (FDR1, Local4)
                    And (Local4, 0x3F, Local4)
                    ShiftLeft (Local2, 0x06, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1)
                    Sleep (0x32)
                    Store (Zero, BSEL)
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                }
                Else
                {
                    Add (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x06, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0xBF, Local4)
                    Or (Local3, Local4, FD21)
                    Store (FDR1, Local4)
                    And (Local4, 0x3F, Local4)
                    ShiftLeft (Local2, 0x06, Local2)
                    Or (Local4, One, Local4)
                    Or (Local4, Local2, FDR1)
                    Sleep (0x32)
                    Store (Zero, BSEL)
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                    Sleep (0x32)
                    Store (FAN2, Local0)
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Method (HWF2, 0, NotSerialized)
        {
            Store (FAN3, Local0)
            Store (Zero, BSEL)
            And (FD21, 0x80, Local1)
            ShiftRight (Local1, 0x07, Local1)
            Multiply (Local1, 0x04, Local1)
            Divide (FD13, 0x40, Local2, Local3)
            Add (Local1, Local3, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x07, Local3)
                Store (FD21, Local4)
                And (Local4, 0x7F, Local4)
                Or (Local3, Local4, FD21)
                Store (FD13, Local3)
                And (Local3, 0x3F, Local3)
                Multiply (Local2, 0x40, Local2)
                Add (Local3, Local2, Local2)
                Store (Local2, FD13)
                Sleep (0x32)
                Store (FAN3, Local0)
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    If (LEqual (Local0, 0xFF))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Add (Local1, One, Local1)
                    }

                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x07, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0x7F, Local4)
                    Or (Local3, Local4, FD21)
                    Store (FD13, Local3)
                    And (Local3, 0x3F, Local3)
                    Multiply (Local2, 0x40, Local2)
                    Add (Local3, Local2, Local2)
                    Store (Local2, FD13)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Sleep (0x32)
                    }

                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                }
                Else
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x07, Local3)
                    Store (FD21, Local4)
                    And (Local4, 0x7F, Local4)
                    Or (Local3, Local4, FD21)
                    Store (FD13, Local3)
                    And (Local3, 0x3F, Local3)
                    Multiply (Local2, 0x40, Local2)
                    Add (Local3, Local2, Local2)
                    Store (Local2, FD13)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                    Sleep (0x32)
                    Store (FAN3, Local0)
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Method (HWF4, 0, NotSerialized)
        {
            Store (0x05, BSEL)
            Store (FAN4, Local0)
            Store (Zero, BSEL)
            And (FND4, 0x80, Local1)
            ShiftRight (Local1, 0x07, Local1)
            Multiply (Local1, 0x04, Local1)
            And (FND4, 0x0C, Local2)
            ShiftRight (Local2, 0x02, Local2)
            Add (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                Divide (Local1, 0x04, Local2, Local3)
                ShiftLeft (Local3, 0x07, Local3)
                ShiftLeft (Local2, 0x02, Local2)
                Store (FND4, Local4)
                And (Local4, 0x73, Local4)
                Or (Local3, Local2, Local3)
                Or (Local3, Local4, FND4)
                Sleep (0x32)
                Store (0x05, BSEL)
                Store (FAN4, Local0)
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    Add (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x07, Local3)
                    ShiftLeft (Local2, 0x02, Local2)
                    Store (FND4, Local4)
                    And (Local4, 0x73, Local4)
                    Or (Local3, Local2, Local3)
                    Or (Local3, Local4, FND4)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Sleep (0x32)
                    }

                    Store (0x05, BSEL)
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Store (Zero, BSEL)
                }
                Else
                {
                    Subtract (Local1, One, Local1)
                    Divide (Local1, 0x04, Local2, Local3)
                    Store (Zero, BSEL)
                    ShiftLeft (Local3, 0x07, Local3)
                    ShiftLeft (Local2, 0x02, Local2)
                    Store (FND4, Local4)
                    And (Local4, 0x73, Local4)
                    Or (Local3, Local2, Local3)
                    Or (Local3, Local4, FND4)
                    Sleep (0x32)
                    Store (0x05, BSEL)
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Sleep (0x32)
                    Store (FAN4, Local0)
                    Store (Zero, BSEL)
                }
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (One, Local2)
            While (Local1)
            {
                Multiply (Local2, 0x02, Local2)
                Decrement (Local1)
            }

            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        Name (FNDT, Package (0x08)
        {
            One, 
            0x02, 
            0x04, 
            0x08, 
            0x10, 
            0x20, 
            0x40, 
            0x80
        })
        Method (HWF3, 0, NotSerialized)
        {
            Store (Zero, BSEL)
            Store (CFN3, Local0)
            And (FD15, 0x80, Local1)
            ShiftRight (Local1, 0x05, Local1)
            And (FND4, 0x03, Local2)
            Or (Local1, Local2, Local1)
            If (LOr (LGreater (Local1, 0x05), LLess (Local1, 0x02)))
            {
                If (LGreater (Local0, 0xF0))
                {
                    Store (0x02, Local1)
                }
                Else
                {
                    If (LLess (Local0, 0x1E))
                    {
                        Store (0x05, Local1)
                    }
                    Else
                    {
                        Store (0x03, Local1)
                    }
                }

                ShiftLeft (Local1, 0x05, Local2)
                And (Local2, 0x80, Local2)
                And (FD15, 0x7F, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FD15)
                And (Local1, 0x03, Local2)
                And (FND4, 0xFC, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FND4)
                Sleep (0x32)
                Store (CFN3, Local0)
            }

            While (LOr (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)), LAnd (
                LLess (Local0, 0x1E), LGreater (Local1, 0x02))))
            {
                If (LAnd (LGreater (Local0, 0xF0), LLess (Local1, 0x05)))
                {
                    Increment (Local1)
                }
                Else
                {
                    Decrement (Local1)
                }

                ShiftLeft (Local1, 0x05, Local2)
                And (Local2, 0x80, Local2)
                And (FD15, 0x7F, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FD15)
                And (Local1, 0x03, Local2)
                And (FND4, 0xFC, Local3)
                Or (Local2, Local3, Local3)
                Store (Local3, FND4)
                Sleep (0x32)
                Store (CFN3, Local0)
                Sleep (0x32)
                Store (CFN3, Local0)
                Sleep (0x32)
                Store (CFN3, Local0)
            }

            If (LAnd (LEqual (Local0, 0xFF), LEqual (Local1, 0x05)))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (Local0, Zero), LEqual (Local1, 0x02)))
            {
                Return (0xFFFF)
            }

            Store (DerefOf (Index (FNDT, Local1)), Local2)
            Multiply (Local0, Local2, Local0)
            Divide (0x00149970, Local0, Local1, Local0)
            Return (Local0)
        }

        OperationRegion (HWRE, SystemIO, IOHW, 0x0A)
        Field (HWRE, ByteAcc, NoLock, Preserve)
        {
            Offset (0x05), 
            HIDX,   8, 
            HDAT,   8
        }

        IndexField (HIDX, HDAT, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CHNM,   1, 
            CFNM,   1, 
            CHNS,   2, 
            CFNS,   2, 
            Offset (0x05), 
            SYST,   8, 
            TRGT,   8, 
            Offset (0x08), 
            SSDN,   8, 
            CSDN,   8, 
            SSUP,   8, 
            CSUP,   8, 
            Offset (0x20), 
            VCOR,   8, 
            V12V,   8, 
            Offset (0x23), 
            V33V,   8, 
            V50V,   8, 
            Offset (0x27), 
            MBTE,   8, 
            FAN1,   8, 
            FAN2,   8, 
            FAN3,   8, 
            Offset (0x3F), 
            CFN3,   8, 
            Offset (0x47), 
            FDR1,   8, 
            Offset (0x4B), 
            FD13,   8, 
            FD15,   8, 
            Offset (0x4E), 
            BSEL,   4, 
            Offset (0x4F), 
            Offset (0x50), 
            TSR1,   8, 
                ,   7, 
            TSR2,   1, 
            Offset (0x53), 
            FAN4,   8, 
            Offset (0x59), 
            FND4,   8, 
            Offset (0x5D), 
            FD21,   8
        }
    }

    Scope (_SB.PCI0.SBRG.ASOC)
    {
        Name (CORV, Package (0x05)
        {
            0x06020000, 
            "Vcore Voltage", 
            0x0320, 
            0x0640, 
            One
        })
        Name (V3VV, Package (0x05)
        {
            0x06020001, 
            " +3.3 Voltage", 
            0x0B9A, 
            0x0E2E, 
            One
        })
        Name (V5VV, Package (0x05)
        {
            0x06020002, 
            " +5 Voltage", 
            0x1194, 
            0x157C, 
            One
        })
        Name (VV12, Package (0x05)
        {
            0x06020003, 
            " +12 Voltage", 
            0x27D8, 
            0x35E8, 
            One
        })
        Name (VPAR, Package (0x04)
        {
            Package (0x03)
            {
                Zero, 
                One, 
                Zero
            }, 

            Package (0x03)
            {
                0x22, 
                0x22, 
                Zero
            }, 

            Package (0x03)
            {
                0x03E8, 
                0x01F3, 
                Zero
            }, 

            Package (0x03)
            {
                0x05DC, 
                0xF9, 
                Zero
            }
        })
        Name (VBUF, Package (0x05)
        {
            0x04, 
            CORV, 
            V3VV, 
            V5VV, 
            VV12
        })
        Method (VGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWV0 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWV3 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (^^SIOR.HWV4 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (^^SIOR.HWV1 ())
            }
        }

        Name (CPUT, Package (0x05)
        {
            0x06030000, 
            "CPU Temperature", 
            0x0258, 
            0x02EE, 
            0x00010001
        })
        Name (MBTP, Package (0x05)
        {
            0x06030001, 
            "MB Temperature", 
            0x01C2, 
            0x02EE, 
            0x00010001
        })
        Name (TBUF, Package (0x03)
        {
            0x02, 
            CPUT, 
            MBTP
        })
        Method (TGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWT1 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWT0 ())
            }
        }

        Name (CPUF, Package (0x05)
        {
            0x06040000, 
            "CPU FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (CHF1, Package (0x05)
        {
            0x06040001, 
            "CHASSIS1 FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (CHF2, Package (0x05)
        {
            0x06040002, 
            "CHASSIS2 FAN Speed", 
            0x0258, 
            0x1C20, 
            0x00010001
        })
        Name (PWRF, Package (0x05)
        {
            0x06040003, 
            "POWER FAN Speed", 
            Zero, 
            0x1C20, 
            0x00010001
        })
        Name (FBUF, Package (0x05)
        {
            0x04, 
            CPUF, 
            CHF1, 
            CHF2, 
            PWRF
        })
        Method (FGET, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Return (^^SIOR.HWF1 ())
            }

            If (LEqual (Arg0, One))
            {
                Return (^^SIOR.HWF0 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (^^SIOR.HWF3 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                Return (^^SIOR.HWF2 ())
            }
        }

        Method (VSIF, 0, NotSerialized)
        {
            Return (VBUF)
        }

        Method (RVLT, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (VGET (Local0), Local1)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), Zero)), 
                Local2)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), One)), 
                Local3)
            Store (DerefOf (Index (DerefOf (Index (VPAR, Local0)), 0x02)), 
                Local4)
            Multiply (Local1, Add (Local2, Local3), Local5)
            Divide (Local5, Local3, , Local5)
            Add (Local5, Local4, Local5)
            Return (Local5)
        }

        Method (SVLT, 1, NotSerialized)
        {
            And (DerefOf (Index (Arg0, Zero)), 0xFFFF, Local0)
            Store (DerefOf (Index (VBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (VBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (VBUF, 
                Local0)), 0x04))
            Return (One)
        }

        Method (TSIF, 0, NotSerialized)
        {
            Return (TBUF)
        }

        Method (RTMP, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (TGET (Local0), Local1)
            Return (Local1)
        }

        Method (STMP, 1, NotSerialized)
        {
            Store (And (DerefOf (Index (Arg0, Zero)), 0xFFFF), Local0)
            Store (DerefOf (Index (TBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (TBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (TBUF, 
                Local0)), 0x04))
            Return (One)
        }

        Method (FSIF, 0, NotSerialized)
        {
            Return (FBUF)
        }

        Method (RFAN, 1, NotSerialized)
        {
            And (Arg0, 0xFFFF, Local0)
            Store (FGET (Local0), Local1)
            Return (Local1)
        }

        Method (SFAN, 1, NotSerialized)
        {
            And (DerefOf (Index (Arg0, Zero)), 0xFFFF, Local0)
            Store (DerefOf (Index (FBUF, Zero)), Local1)
            If (LGreaterEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Increment (Local0)
            Store (DerefOf (Index (Arg0, One)), Index (DerefOf (Index (FBUF, 
                Local0)), One))
            Store (DerefOf (Index (Arg0, 0x02)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x02))
            Store (DerefOf (Index (Arg0, 0x03)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x03))
            Store (DerefOf (Index (Arg0, 0x04)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x04))
            Store (DerefOf (Index (Arg0, 0x05)), Index (DerefOf (Index (FBUF, 
                Local0)), 0x05))
            Return (One)
        }
    }

    Scope (_SB)
    {
        Scope (PCI0)
        {
            Name (CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, _Y1C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y1D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y1E, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (CRS, \_SB.PCI0._Y1C._MIN, MIN5)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y1C._MAX, MAX5)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y1C._LEN, LEN5)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y1D._MIN, MIN6)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y1D._MAX, MAX6)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y1D._LEN, LEN6)  // _LEN: Length
            CreateDWordField (CRS, \_SB.PCI0._Y1E._MIN, MIN7)  // _MIN: Minimum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y1E._MAX, MAX7)  // _MAX: Maximum Base Address
            CreateDWordField (CRS, \_SB.PCI0._Y1E._LEN, LEN7)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Store (MG1L, Local0)
                If (Local0)
                {
                    Store (MG1B, MIN5)
                    Store (MG1L, LEN5)
                    Add (MIN5, Decrement (Local0), MAX5)
                }

                Store (MG2B, MIN6)
                Store (MG2L, LEN6)
                Store (MG2L, Local0)
                Add (MIN6, Decrement (Local0), MAX6)
                Store (MG3B, MIN7)
                Store (MG3L, LEN7)
                Store (MG3L, Local0)
                Add (MIN7, Decrement (Local0), MAX7)
                Return (CRS)
            }
        }
    }

    Name (WOTB, Zero)
    Name (WSSB, Zero)
    Name (WAXB, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Arg0, DBG8)
        PTS (Arg0)
        Store (Zero, Index (WAKP, Zero))
        Store (Zero, Index (WAKP, One))
        If (LAnd (LEqual (Arg0, 0x04), LEqual (OSFL (), 0x02)))
        {
            Sleep (0x0BB8)
        }

        Store (ASSB, WSSB)
        Store (AOTB, WOTB)
        Store (AAXB, WAXB)
        Store (Arg0, ASSB)
        Store (OSFL (), AOTB)
        Store (OSYS (), OSTP)
        Store (Zero, AAXB)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        ShiftLeft (Arg0, 0x04, DBG8)
        WAK (Arg0)
        If (IOWK) {}
        Else
        {
            Notify (\_SB.PWRB, 0x02)
        }

        If (ASSB)
        {
            Store (WSSB, ASSB)
            Store (WOTB, AOTB)
            Store (WAXB, AAXB)
        }

        If (DerefOf (Index (WAKP, Zero)))
        {
            Store (Zero, Index (WAKP, One))
        }
        Else
        {
            Store (Arg0, Index (WAKP, One))
        }

        Return (WAKP)
    }

    OperationRegion (IORK, SystemIO, 0xB3, One)
    Field (IORK, ByteAcc, NoLock, Preserve)
    {
        IOWK,   8
    }

    Scope (_SB.PCI0)
    {
        OperationRegion (TVID, SystemMemory, 0xFED40F00, 0x02)
        Field (TVID, WordAcc, NoLock, Preserve)
        {
            VIDT,   16
        }
    }

    Device (_SB.PCI0.SBRG.TPM)
    {
        Name (_HID, EisaId ("IFX0102"))  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IO (Decode16,
                0x004E,             // Range Minimum
                0x004E,             // Range Maximum
                0x01,               // Alignment
                0x02,               // Length
                )
            IO (Decode16,
                0x4700,             // Range Minimum
                0x4700,             // Range Maximum
                0x01,               // Alignment
                0x0C,               // Length
                )
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (TPMF)
            {
                If (LNotEqual (VIDT, 0x8086))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Device (_SB.PCI0.ITPM)
    {
        Name (_HID, "INTC0102")  // _HID: Hardware ID
        Name (_CID, EisaId ("PNP0C31"))  // _CID: Compatible ID
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                )
        })
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (TPMF)
            {
                If (LEqual (VIDT, 0x8086))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.SBRG.TPM)
    {
        Name (TAAX, Zero)
        OperationRegion (MIPT, SystemIO, SMIT, One)
        Field (MIPT, ByteAcc, NoLock, Preserve)
        {
            PSMI,   8
        }

        Name (PPI1, Package (0x02)
        {
            Zero, 
            Zero
        })
        Name (PPI2, Package (0x03)
        {
            Zero, 
            Zero, 
            Zero
        })
        Name (MBUF, Buffer (0x04) {})
        CreateByteField (MBUF, Zero, BUF0)
        CreateByteField (MBUF, One, BUF1)
        CreateByteField (MBUF, 0x02, BUF2)
        CreateByteField (MBUF, 0x03, BUF3)
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E,
                        /* 0008 */   0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                    }))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F
                    })
                }
                Else
                {
                    If (LEqual (_T_0, One))
                    {
                        Return ("1.0")
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x02))
                        {
                            Store (AAXB, TAAX)
                            Store (CMRQ, BUF0)
                            Store (0xF0, BUF1)
                            Store (ToInteger (DerefOf (Index (Arg3, Zero))), BUF2)
                            Store (One, BUF3)
                            Store (MBUF, AAXB)
                            Store (0xFB, PSMI)
                            Sleep (0x03E8)
                            Store (TAAX, AAXB)
                            Return (Zero)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x03))
                            {
                                Store (AAXB, TAAX)
                                Store (CMRQ, BUF0)
                                Store (0x0F, BUF1)
                                Store (Zero, BUF2)
                                Store (Zero, BUF3)
                                Store (MBUF, AAXB)
                                Store (0xFB, PSMI)
                                Sleep (0x03E8)
                                Store (AAXB, MBUF)
                                Store (BUF2, Local3)
                                Store (Zero, Index (PPI1, Zero))
                                Store (Local3, Index (PPI1, One))
                                Store (TAAX, AAXB)
                                Return (PPI1)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x04))
                                {
                                    Return (0x02)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x05))
                                    {
                                        Store (AAXB, TAAX)
                                        Store (CMRQ, BUF0)
                                        Store (0xF0, BUF1)
                                        Store (Zero, BUF2)
                                        Store (Zero, BUF3)
                                        Store (MBUF, AAXB)
                                        Store (0xFB, PSMI)
                                        Sleep (0x03E8)
                                        Store (AAXB, MBUF)
                                        ShiftRight (BUF2, 0x04, Local3)
                                        Store (CMER, BUF0)
                                        Store (0xFF, BUF1)
                                        Store (Zero, BUF2)
                                        Store (Zero, BUF3)
                                        Store (MBUF, AAXB)
                                        Store (0xFB, PSMI)
                                        Sleep (0x03E8)
                                        Store (AAXB, MBUF)
                                        Store (BUF2, Local6)
                                        Add (CMER, One, Local4)
                                        Store (Local4, BUF0)
                                        Store (0xFF, BUF1)
                                        Store (Zero, BUF2)
                                        Store (Zero, BUF3)
                                        Store (MBUF, AAXB)
                                        Store (0xFB, PSMI)
                                        Sleep (0x03E8)
                                        Store (AAXB, MBUF)
                                        Store (BUF2, Local7)
                                        Multiply (Local7, 0x0100, Local2)
                                        Add (Local2, Local6, Local2)
                                        Store (Zero, Index (PPI2, Zero))
                                        Store (Local3, Index (PPI2, One))
                                        If (LEqual (Local2, 0xFFF0))
                                        {
                                            Store (0xFFFFFFF0, Index (PPI2, 0x02))
                                        }
                                        Else
                                        {
                                            If (LEqual (Local2, 0xFFF1))
                                            {
                                                Store (0xFFFFFFF1, Index (PPI2, 0x02))
                                            }
                                            Else
                                            {
                                                Store (Local2, Index (PPI2, 0x02))
                                            }
                                        }

                                        Store (TAAX, AAXB)
                                        Return (PPI2)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x06))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Else
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46,
                            /* 0008 */   0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                        }))
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (ToInteger (Arg2), _T_1)
                    If (LEqual (_T_1, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03
                        })
                    }
                    Else
                    {
                        If (LEqual (_T_1, One))
                        {
                            Store (AAXB, TAAX)
                            Store (CMOR, BUF0)
                            Store (0xFE, BUF1)
                            Store (ToInteger (DerefOf (Index (Arg3, Zero))), BUF2)
                            Store (One, BUF3)
                            Store (MBUF, AAXB)
                            Store (0xFB, PSMI)
                            Sleep (0x0BB8)
                            Store (TAAX, AAXB)
                            Return (Zero)
                        }
                        Else
                        {
                        }
                    }
                }
            }

            Return (Buffer (One)
            {
                 0x00
            })
        }
    }

    Scope (_SB.PCI0.ITPM)
    {
        Name (TAAX, Zero)
        OperationRegion (MIPT, SystemIO, SMIT, One)
        Field (MIPT, ByteAcc, NoLock, Preserve)
        {
            PSMI,   8
        }

        Name (PPI1, Package (0x02)
        {
            Zero, 
            Zero
        })
        Name (PPI2, Package (0x03)
        {
            Zero, 
            Zero, 
            Zero
        })
        Name (MBUF, Buffer (0x04) {})
        CreateByteField (MBUF, Zero, BUF0)
        CreateByteField (MBUF, One, BUF1)
        CreateByteField (MBUF, 0x02, BUF2)
        CreateByteField (MBUF, 0x03, BUF3)
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, Buffer (0x10)
                    {
                        /* 0000 */   0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E,
                        /* 0008 */   0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                    }))
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x7F
                    })
                }
                Else
                {
                    If (LEqual (_T_0, One))
                    {
                        Return ("1.0")
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x02))
                        {
                            Store (AAXB, TAAX)
                            Store (CMRQ, BUF0)
                            Store (0xF0, BUF1)
                            Store (ToInteger (DerefOf (Index (Arg3, Zero))), BUF2)
                            Store (One, BUF3)
                            Store (MBUF, AAXB)
                            Store (0xFB, PSMI)
                            Sleep (0x03E8)
                            Store (TAAX, AAXB)
                            Return (Zero)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x03))
                            {
                                Store (AAXB, TAAX)
                                Store (CMRQ, BUF0)
                                Store (0x0F, BUF1)
                                Store (Zero, BUF2)
                                Store (Zero, BUF3)
                                Store (MBUF, AAXB)
                                Store (0xFB, PSMI)
                                Sleep (0x03E8)
                                Store (AAXB, MBUF)
                                Store (BUF2, Local3)
                                Store (Zero, Index (PPI1, Zero))
                                Store (Local3, Index (PPI1, One))
                                Store (TAAX, AAXB)
                                Return (PPI1)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x04))
                                {
                                    Return (0x02)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x05))
                                    {
                                        Store (AAXB, TAAX)
                                        Store (CMRQ, BUF0)
                                        Store (0xF0, BUF1)
                                        Store (Zero, BUF2)
                                        Store (Zero, BUF3)
                                        Store (MBUF, AAXB)
                                        Store (0xFB, PSMI)
                                        Sleep (0x03E8)
                                        Store (AAXB, MBUF)
                                        ShiftRight (BUF2, 0x04, Local3)
                                        Store (CMER, BUF0)
                                        Store (0xFF, BUF1)
                                        Store (Zero, BUF2)
                                        Store (Zero, BUF3)
                                        Store (MBUF, AAXB)
                                        Store (0xFB, PSMI)
                                        Sleep (0x03E8)
                                        Store (AAXB, MBUF)
                                        Store (BUF2, Local6)
                                        Add (CMER, One, Local4)
                                        Store (Local4, BUF0)
                                        Store (0xFF, BUF1)
                                        Store (Zero, BUF2)
                                        Store (Zero, BUF3)
                                        Store (MBUF, AAXB)
                                        Store (0xFB, PSMI)
                                        Sleep (0x03E8)
                                        Store (AAXB, MBUF)
                                        Store (BUF2, Local7)
                                        Multiply (Local7, 0x0100, Local2)
                                        Add (Local2, Local6, Local2)
                                        Store (Zero, Index (PPI2, Zero))
                                        Store (Local3, Index (PPI2, One))
                                        If (LEqual (Local2, 0xFFF0))
                                        {
                                            Store (0xFFFFFFF0, Index (PPI2, 0x02))
                                        }
                                        Else
                                        {
                                            If (LEqual (Local2, 0xFFF1))
                                            {
                                                Store (0xFFFFFFF1, Index (PPI2, 0x02))
                                            }
                                            Else
                                            {
                                                Store (Local2, Index (PPI2, 0x02))
                                            }
                                        }

                                        Store (TAAX, AAXB)
                                        Return (PPI2)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x06))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Else
            {
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */   0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46,
                            /* 0008 */   0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                        }))
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Store (ToInteger (Arg2), _T_1)
                    If (LEqual (_T_1, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03
                        })
                    }
                    Else
                    {
                        If (LEqual (_T_1, One))
                        {
                            Store (AAXB, TAAX)
                            Store (CMOR, BUF0)
                            Store (0xFE, BUF1)
                            Store (ToInteger (DerefOf (Index (Arg3, Zero))), BUF2)
                            Store (One, BUF3)
                            Store (MBUF, AAXB)
                            Store (0xFB, PSMI)
                            Sleep (0x0BB8)
                            Store (TAAX, AAXB)
                            Return (Zero)
                        }
                        Else
                        {
                        }
                    }
                }
            }

            Return (Buffer (One)
            {
                 0x00
            })
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0)
        {
            \_SB.PCI0.SBRG.SIOS (Arg0)
            \_SB.PCI0.SBRG.SPTS (Arg0)
            \_SB.PCI0.NPTS (Arg0)
        }
    }

    Method (WAK, 1, NotSerialized)
    {
        \_SB.PCI0.SBRG.SIOW (Arg0)
        \_SB.PCI0.SBRG.SWAK (Arg0)
        \_SB.PCI0.NWAK (Arg0)
    }
}

