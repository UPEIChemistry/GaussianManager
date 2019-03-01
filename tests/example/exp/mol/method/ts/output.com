 Entering Gaussian System, Link 0=g09
 Initial command:
 /opt/software/gaussian/g09.e01/l1.exe "/localscratch/rjackson.12067818.0/Gau-4522.inp" -scrdir="/localscratch/rjackson.12067818.0/"
 Entering Link 1 = /opt/software/gaussian/g09.e01/l1.exe PID=      4523.
  
 Copyright (c) 1988,1990,1992,1993,1995,1998,2003,2009,2015,
            Gaussian, Inc.  All Rights Reserved.
  
 This is part of the Gaussian(R) 09 program.  It is based on
 the Gaussian(R) 03 system (copyright 2003, Gaussian, Inc.),
 the Gaussian(R) 98 system (copyright 1998, Gaussian, Inc.),
 the Gaussian(R) 94 system (copyright 1995, Gaussian, Inc.),
 the Gaussian 92(TM) system (copyright 1992, Gaussian, Inc.),
 the Gaussian 90(TM) system (copyright 1990, Gaussian, Inc.),
 the Gaussian 88(TM) system (copyright 1988, Gaussian, Inc.),
 the Gaussian 86(TM) system (copyright 1986, Carnegie Mellon
 University), and the Gaussian 82(TM) system (copyright 1983,
 Carnegie Mellon University). Gaussian is a federally registered
 trademark of Gaussian, Inc.
  
 This software contains proprietary and confidential information,
 including trade secrets, belonging to Gaussian, Inc.
  
 This software is provided under written license and may be
 used, copied, transmitted, or stored only in accord with that
 written license.
  
 The following legend is applicable only to US Government
 contracts under FAR:
  
                    RESTRICTED RIGHTS LEGEND
  
 Use, reproduction and disclosure by the US Government is
 subject to restrictions as set forth in subparagraphs (a)
 and (c) of the Commercial Computer Software - Restricted
 Rights clause in FAR 52.227-19.
  
 Gaussian, Inc.
 340 Quinnipiac St., Bldg. 40, Wallingford CT 06492
  
  
 ---------------------------------------------------------------
 Warning -- This program may not be used in any manner that
 competes with the business of Gaussian, Inc. or will provide
 assistance to any competitor of Gaussian, Inc.  The licensee
 of this program is prohibited from giving any competitor of
 Gaussian, Inc. access to this program.  By using this program,
 the user acknowledges that Gaussian, Inc. is engaged in the
 business of creating and licensing software in the field of
 computational chemistry and represents and warrants to the
 licensee that it is not a competitor of Gaussian, Inc. and that
 it will not use this program in any manner prohibited above.
 ---------------------------------------------------------------
  

 Cite this work as:
 Gaussian 09, Revision E.01,
 M. J. Frisch, G. W. Trucks, H. B. Schlegel, G. E. Scuseria, 
 M. A. Robb, J. R. Cheeseman, G. Scalmani, V. Barone, B. Mennucci, 
 G. A. Petersson, H. Nakatsuji, M. Caricato, X. Li, H. P. Hratchian, 
 A. F. Izmaylov, J. Bloino, G. Zheng, J. L. Sonnenberg, M. Hada, 
 M. Ehara, K. Toyota, R. Fukuda, J. Hasegawa, M. Ishida, T. Nakajima, 
 Y. Honda, O. Kitao, H. Nakai, T. Vreven, J. A. Montgomery, Jr., 
 J. E. Peralta, F. Ogliaro, M. Bearpark, J. J. Heyd, E. Brothers, 
 K. N. Kudin, V. N. Staroverov, T. Keith, R. Kobayashi, J. Normand, 
 K. Raghavachari, A. Rendell, J. C. Burant, S. S. Iyengar, J. Tomasi, 
 M. Cossi, N. Rega, J. M. Millam, M. Klene, J. E. Knox, J. B. Cross, 
 V. Bakken, C. Adamo, J. Jaramillo, R. Gomperts, R. E. Stratmann, 
 O. Yazyev, A. J. Austin, R. Cammi, C. Pomelli, J. W. Ochterski, 
 R. L. Martin, K. Morokuma, V. G. Zakrzewski, G. A. Voth, 
 P. Salvador, J. J. Dannenberg, S. Dapprich, A. D. Daniels, 
 O. Farkas, J. B. Foresman, J. V. Ortiz, J. Cioslowski, 
 and D. J. Fox, Gaussian, Inc., Wallingford CT, 2013.
 
 ******************************************
 Gaussian 09:  EM64L-G09RevE.01 30-Nov-2015
                26-Feb-2019 
 ******************************************
 ----------------------------------------------------------------------
 # MP2/cc-pVDZ opt(ts, calcfc, noeigen, tight) integral(grid=superfine)
  scf(maxcyc=256) freq
 ----------------------------------------------------------------------
 1/5=1,7=10,10=4,11=1,18=20,38=1/1,3;
 2/9=110,12=2,17=6,18=5,40=1/2;
 3/5=16,11=9,16=1,25=1,30=1,71=2,75=-7,140=1/1,2,3;
 4//1;
 5/5=2,7=256,38=5/2;
 8/6=3,8=1,10=1,19=11,30=-1/1;
 9/15=3,16=-3/6;
 11/6=1,8=1,15=11,17=12,24=-1,27=1,28=-2,29=300,32=6,42=3/1,2,10;
 10/6=2,21=1/2;
 8/6=4,8=1,10=1,19=11,30=-1/11,4;
 10/5=1,20=4/2;
 11/12=2,14=11,16=1,17=2,28=-2,42=3/2,10,12;
 6/7=2,8=2,9=2,10=2/1;
 7/10=1,12=2,25=1,44=2/1,2,3,16;
 1/5=1,7=10,10=4,11=1,18=20/3(2);
 2/9=110/2;
 99//99;
 2/9=110/2;
 3/5=16,11=9,16=1,25=1,30=1,71=1,75=-7/1,2,3;
 4/5=5,16=3,69=1/1;
 5/5=2,7=256,38=5/2;
 8/6=4,10=1/1;
 9/15=2,16=-3/6;
 10/5=1/2;
 7/12=2/1,2,3,16;
 1/5=1,7=10,11=1,18=20/3(-8);
 2/9=110/2;
 6/7=2,8=2,9=2,10=2/1;
 99//99;
 ----------------
 OH-chloroform_ts
 ----------------
 Symbolic Z-matrix:
 Charge = -1 Multiplicity = 1
 Cl                   -1.65785   0.00004   0.00001 
 C                     0.39841  -0.01466  0. 
 H                     0.56615  -0.54597   0.92926 
 H                     0.56614  -0.54605  -0.92922 
 H                     0.58955   1.05247  -0.00005 
 O                     2.63176   0.11322  -0.00002 
 H                     3.01714  -0.77887   0.00002 
 
 Add virtual bond connecting atoms O6         and C2         Dist= 4.23D+00.
 Add virtual bond connecting atoms O6         and H3         Dist= 4.46D+00.
 Add virtual bond connecting atoms O6         and H4         Dist= 4.46D+00.
 Add virtual bond connecting atoms O6         and H5         Dist= 4.25D+00.

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 Initialization pass.
                           ----------------------------
                           !    Initial Parameters    !
                           ! (Angstroms and Degrees)  !
 --------------------------                            --------------------------
 ! Name  Definition              Value          Derivative Info.                !
 --------------------------------------------------------------------------------
 ! R1    R(1,2)                  2.0563         calculate D2E/DX2 analytically  !
 ! R2    R(2,3)                  1.0835         calculate D2E/DX2 analytically  !
 ! R3    R(2,4)                  1.0835         calculate D2E/DX2 analytically  !
 ! R4    R(2,5)                  1.0841         calculate D2E/DX2 analytically  !
 ! R5    R(2,6)                  2.237          calculate D2E/DX2 analytically  !
 ! R6    R(3,6)                  2.359          calculate D2E/DX2 analytically  !
 ! R7    R(4,6)                  2.359          calculate D2E/DX2 analytically  !
 ! R8    R(5,6)                  2.2478         calculate D2E/DX2 analytically  !
 ! R9    R(6,7)                  0.9718         calculate D2E/DX2 analytically  !
 ! A1    A(1,2,3)               99.1088         calculate D2E/DX2 analytically  !
 ! A2    A(1,2,4)               99.1089         calculate D2E/DX2 analytically  !
 ! A3    A(1,2,5)               99.745          calculate D2E/DX2 analytically  !
 ! A4    A(3,2,4)              118.1043         calculate D2E/DX2 analytically  !
 ! A5    A(3,2,5)              117.0925         calculate D2E/DX2 analytically  !
 ! A6    A(4,2,5)              117.0924         calculate D2E/DX2 analytically  !
 ! A7    A(2,6,7)              110.0872         calculate D2E/DX2 analytically  !
 ! A8    A(3,6,4)               46.3965         calculate D2E/DX2 analytically  !
 ! A9    A(3,6,5)               47.2529         calculate D2E/DX2 analytically  !
 ! A10   A(3,6,7)               95.2049         calculate D2E/DX2 analytically  !
 ! A11   A(4,6,5)               47.2529         calculate D2E/DX2 analytically  !
 ! A12   A(4,6,7)               95.2049         calculate D2E/DX2 analytically  !
 ! A13   A(5,6,7)              138.0629         calculate D2E/DX2 analytically  !
 ! A14   L(1,2,6,3,-1)         181.8403         calculate D2E/DX2 analytically  !
 ! A15   L(1,2,6,3,-2)         183.2278         calculate D2E/DX2 analytically  !
 ! D1    D(3,2,5,4)            148.8758         calculate D2E/DX2 analytically  !
 ! D2    D(4,3,6,2)             33.1403         calculate D2E/DX2 analytically  !
 ! D3    D(5,3,6,2)            -33.5238         calculate D2E/DX2 analytically  !
 ! D4    D(7,3,6,2)            125.3776         calculate D2E/DX2 analytically  !
 ! D5    D(5,4,6,2)             33.5238         calculate D2E/DX2 analytically  !
 ! D6    D(7,4,6,2)           -125.3776         calculate D2E/DX2 analytically  !
 ! D7    D(7,5,6,2)              0.0            calculate D2E/DX2 analytically  !
 --------------------------------------------------------------------------------
 Trust Radius=3.00D-01 FncErr=1.00D-07 GrdErr=1.00D-07
 Number of steps in this run=     41 maximum allowed number of steps=    100.
 Search for a saddle point of order  1.
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.657852    0.000036    0.000008
      2          6           0        0.398411   -0.014663   -0.000001
      3          1           0        0.566149   -0.545967    0.929261
      4          1           0        0.566141   -0.546052   -0.929216
      5          1           0        0.589545    1.052467   -0.000051
      6          8           0        2.631756    0.113223   -0.000017
      7          1           0        3.017143   -0.778872    0.000022
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    2.056316   0.000000
     3  H    2.471399   1.083489   0.000000
     4  H    2.471399   1.083489   1.858477   0.000000
     5  H    2.481613   1.084112   1.849097   1.849097   0.000000
     6  O    4.291101   2.237004   2.358987   2.358987   2.247845
     7  H    4.739438   2.727961   2.631559   2.631558   3.040894
                    6          7
     6  O    0.000000
     7  H    0.971780   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.657852    0.000036    0.000008
      2          6           0        0.398411   -0.014663   -0.000001
      3          1           0        0.566149   -0.545967    0.929261
      4          1           0        0.566141   -0.546052   -0.929216
      5          1           0        0.589545    1.052467   -0.000051
      6          8           0        2.631756    0.113223   -0.000017
      7          1           0        3.017143   -0.778872    0.000022
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    119.1886259      2.2957138      2.2878237
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        88.3939756081 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  2.10D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       7 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411148.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.491071306     A.U. after   13 cycles
            NFock= 13  Conv=0.70D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Disk-based method using ON**2 memory for 11 occupieds at a time.
 Permanent disk used for amplitudes=      919080 words.
 Estimated scratch disk usage=     7097308 words.
 Actual    scratch disk usage=     7097308 words.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 (rs|ai) integrals will be sorted in core.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2006456405D-01 E2=     -0.6074352029D-01
     alpha-beta  T2 =       0.1192798927D+00 E2=     -0.3668558483D+00
     beta-beta   T2 =       0.2006456405D-01 E2=     -0.6074352029D-01
 ANorm=    0.1076758571D+01
 E2 =    -0.4883428889D+00 EUMP2 =    -0.57497941419493D+03
 G2DrvN: will do     8 centers at a time, making    1 passes.
 Calling FoFCou, ICntrl=  3107 FMM=F I1Cent=   0 AccDes= 0.00D+00.
 End of G2Drv F.D. properties file   721 does not exist.
 End of G2Drv F.D. properties file   722 does not exist.
 End of G2Drv F.D. properties file   788 does not exist.
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351410.
          There are    24 degrees of freedom in the 1st order CPHF.  IDoFFX=6 NUNeed=    24.
     21 vectors produced by pass  0 Test12= 3.60D-15 4.17D-09 XBig12= 1.72D+01 2.58D+00.
 AX will form    21 AO Fock derivatives at one time.
     21 vectors produced by pass  1 Test12= 3.60D-15 4.17D-09 XBig12= 7.44D-01 2.12D-01.
     21 vectors produced by pass  2 Test12= 3.60D-15 4.17D-09 XBig12= 4.18D-02 5.25D-02.
     21 vectors produced by pass  3 Test12= 3.60D-15 4.17D-09 XBig12= 4.89D-04 4.12D-03.
     21 vectors produced by pass  4 Test12= 3.60D-15 4.17D-09 XBig12= 3.34D-06 3.42D-04.
     21 vectors produced by pass  5 Test12= 3.60D-15 4.17D-09 XBig12= 1.72D-08 2.32D-05.
     14 vectors produced by pass  6 Test12= 3.60D-15 4.17D-09 XBig12= 1.21D-10 2.05D-06.
      3 vectors produced by pass  7 Test12= 3.60D-15 4.17D-09 XBig12= 6.43D-13 1.58D-07.
      3 vectors produced by pass  8 Test12= 3.60D-15 4.17D-09 XBig12= 4.07D-15 1.45D-08.
 InvSVY:  IOpt=1 It=  1 EMax= 1.78D-15
 Solved reduced A of dimension   146 with    24 vectors.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 MDV=    33554432.
 Form MO integral derivatives with frozen-active canonical formalism.
 Discarding MO integrals.
 Reordered first order wavefunction length =      1492992
 In DefCFB: NBatch=  1 ICI= 18 ICA= 48 LFMax= 18
            Large arrays: LIAPS=    15738624 LIARS=     7928928 words.
 Semi-Direct transformation.
 ModeAB=           4 MOrb=            18 LenV=      33289014
 LASXX=      2037645 LTotXX=     2037645 LenRXX=     4178286
 LTotAB=     2140641 MaxLAS=     2863080 LenRXY=           0
 NonZer=     6215931 LenScr=    10097152 LnRSAI=     2863080
 LnScr1=     5006848 LExtra=           0 Total=     22145366
 MaxDsk=          -1 SrtSym=           T ITran=            4
 JobTyp=0 Pass  1:  I=   1 to  18.
 (rs|ai) integrals will be sorted in core.
 SymMOI:  orbitals are not symmetric.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2006456405D-01 E2=     -0.6074352029D-01
     alpha-beta  T2 =       0.1192798927D+00 E2=     -0.3668558483D+00
     beta-beta   T2 =       0.2006456405D-01 E2=     -0.6074352029D-01
 ANorm=    0.1522766575D+01
 E2 =    -0.4883428889D+00 EUMP2 =    -0.57497941419493D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.41D-03 Max=1.21D-01 NDo=     1
 LinEq1:  Iter=  1 NonCon=     1 RMS=2.05D-03 Max=2.27D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.58D-04 Max=5.30D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.23D-04 Max=2.55D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=7.36D-05 Max=8.56D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.82D-05 Max=1.86D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.86D-06 Max=4.55D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.06D-06 Max=9.20D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.52D-07 Max=2.74D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.78D-08 Max=7.36D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.26D-08 Max=1.26D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=2.04D-09 Max=1.92D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.23D-10 Max=3.09D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.56D-11 Max=5.31D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Symmetrizing basis deriv contribution to polar:
 IMax=3 JMax=2 DiffMx= 0.00D+00
 G2DrvN: will do     8 centers at a time, making    1 passes.
 Calling FoFCou, ICntrl=  3107 FMM=F I1Cent=   0 AccDes= 0.00D+00.
 End of G2Drv F.D. properties file   721 does not exist.
 End of G2Drv F.D. properties file   722 does not exist.
 End of G2Drv F.D. properties file   788 does not exist.
 R2 and R3 integrals will be kept in memory, NReq=     6654640.
 DD1Dir will call FoFMem   1 times, MxPair=       342
 NAB=   171 NAA=     0 NBB=     0.
 Discarding MO integrals.

 **********************************************************************

            Population analysis using the SCF density.

 **********************************************************************

 Orbital symmetries:
       Occupied  (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A)
       Virtual   (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
 The electronic state is 1-A.
 Alpha  occ. eigenvalues -- -104.59444 -20.19112 -11.13405 -10.32016  -7.78710
 Alpha  occ. eigenvalues --   -7.78518  -7.78518  -0.92922  -0.87268  -0.72604
 Alpha  occ. eigenvalues --   -0.43134  -0.42851  -0.29927  -0.25855  -0.23731
 Alpha  occ. eigenvalues --   -0.23523  -0.13664  -0.11773
 Alpha virt. eigenvalues --    0.34784   0.38649   0.42255   0.43003   0.46173
 Alpha virt. eigenvalues --    0.77446   0.78284   0.89618   0.97058   0.97378
 Alpha virt. eigenvalues --    1.00087   1.04004   1.04068   1.04151   1.11288
 Alpha virt. eigenvalues --    1.15520   1.17823   1.20944   1.21613   1.21620
 Alpha virt. eigenvalues --    1.34918   1.42126   1.45129   1.59894   1.61198
 Alpha virt. eigenvalues --    1.66220   1.71068   1.79462   1.85599   1.85990
 Alpha virt. eigenvalues --    2.01099   2.02971   2.06721   2.23568   2.25433
 Alpha virt. eigenvalues --    2.25476   2.56232   2.58627   2.59078   2.75050
 Alpha virt. eigenvalues --    2.97121   2.97650   2.98354   3.34286   3.44164
 Alpha virt. eigenvalues --    3.65168   3.65815   4.39081
          Condensed to atoms (all electrons):
               1          2          3          4          5          6
     1  Cl  17.618878   0.066938  -0.031921  -0.031921  -0.036742   0.002556
     2  C    0.066938   4.497233   0.419025   0.419025   0.429776   0.066078
     3  H   -0.031921   0.419025   0.562019  -0.021293  -0.015985   0.007922
     4  H   -0.031921   0.419025  -0.021293   0.562019  -0.015985   0.007922
     5  H   -0.036742   0.429776  -0.015985  -0.015985   0.541431  -0.002898
     6  O    0.002556   0.066078   0.007922   0.007922  -0.002898   8.454717
     7  H   -0.000363  -0.013721   0.000483   0.000483  -0.001670   0.297838
               7
     1  Cl  -0.000363
     2  C   -0.013721
     3  H    0.000483
     4  H    0.000483
     5  H   -0.001670
     6  O    0.297838
     7  H    0.672611
 Mulliken charges:
               1
     1  Cl  -0.587425
     2  C    0.115647
     3  H    0.079751
     4  H    0.079751
     5  H    0.102074
     6  O   -0.834137
     7  H    0.044338
 Sum of Mulliken charges =  -1.00000
 Mulliken charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.587425
     2  C    0.377223
     6  O   -0.789798
 APT charges:
               1
     1  Cl  -1.094846
     2  C    1.239070
     3  H   -0.041752
     4  H   -0.041752
     5  H   -0.023603
     6  O   -0.990634
     7  H   -0.046482
 Sum of APT charges =  -1.00000
 APT charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -1.094846
     2  C    1.131962
     6  O   -1.037116
 Electronic spatial extent (au):  <R**2>=            505.3036
 Charge=             -1.0000 electrons
 Dipole moment (field-independent basis, Debye):
    X=             -3.9071    Y=             -1.3337    Z=              0.0001  Tot=              4.1285
 Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -61.1879   YY=            -26.8858   ZZ=            -28.0712
   XY=             -4.2009   XZ=              0.0003   YZ=             -0.0000
 Traceless Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -22.4729   YY=             11.8292   ZZ=             10.6437
   XY=             -4.2009   XZ=              0.0003   YZ=             -0.0000
 Octapole moment (field-independent basis, Debye-Ang**2):
  XXX=            -48.6904  YYY=              0.3482  ZZZ=              0.0001  XYY=              4.4439
  XXY=            -12.7507  XXZ=              0.0008  XZZ=              1.0537  YZZ=             -0.9978
  YYZ=             -0.0001  XYZ=             -0.0001
 Hexadecapole moment (field-independent basis, Debye-Ang**3):
 XXXX=           -752.6930 YYYY=            -35.9404 ZZZZ=            -34.3826 XXXY=            -39.1960
 XXXZ=              0.0038 YYYX=             -1.7207 YYYZ=              0.0000 ZZZX=              0.0014
 ZZZY=              0.0001 XXYY=            -96.5834 XXZZ=           -105.6853 YYZZ=            -11.8542
 XXYZ=             -0.0002 YYXZ=              0.0004 ZZXY=             -0.8960
 N-N= 8.839397560810D+01 E-N=-1.551717497647D+03  KE= 5.744868389062D+02
  Exact polarizability:  82.158  -2.922  22.876  -0.000  -0.000  19.878
 Approx polarizability:  42.955  -1.071  20.898  -0.000  -0.000  17.629
 Calling FoFJK, ICntrl=  10100127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.006807791   -0.000156455    0.000000021
      2        6           0.014999508   -0.001099774   -0.000000116
      3        1           0.001620342    0.000207728    0.000046109
      4        1           0.001620281    0.000207739   -0.000046058
      5        1           0.000551331    0.000018388    0.000000027
      6        8          -0.007726172    0.003935136   -0.000000145
      7        1          -0.004257499   -0.003112763    0.000000162
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.014999508 RMS     0.004260592
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 Internal  Forces:  Max     0.006806498 RMS     0.001968607
 Search for a saddle point.
 Step number   1 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Second derivative matrix not updated -- analytic derivatives used.
 ITU=  0
     Eigenvalues ---   -0.02102  -0.00008   0.00512   0.01168   0.01289
     Eigenvalues ---    0.01681   0.05197   0.05580   0.09105   0.09214
     Eigenvalues ---    0.10165   0.32181   0.35798   0.36058   0.50314
 Eigenvectors required to have negative eigenvalues:
                          D1        R5        R1        A1        A2
   1                   -0.53369   0.53048  -0.47447   0.17636   0.17636
                          A3        R8        R6        R7        A6
   1                    0.16220   0.14695   0.13424   0.13337  -0.10309
 RFO step:  Lambda0=3.319258022D-03 Lambda=-2.18820058D-03.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.603
 Iteration  1 RMS(Cart)=  0.04487421 RMS(Int)=  0.00324731
 Iteration  2 RMS(Cart)=  0.00198728 RMS(Int)=  0.00220733
 Iteration  3 RMS(Cart)=  0.00000144 RMS(Int)=  0.00220733
 Iteration  4 RMS(Cart)=  0.00000000 RMS(Int)=  0.00220733
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.88587   0.00681   0.00000  -0.10948  -0.10948   3.77639
    R2        2.04750   0.00063   0.00000   0.00151   0.00234   2.04983
    R3        2.04750   0.00059   0.00000   0.00150   0.00272   2.05021
    R4        2.04867   0.00063   0.00000   0.00382   0.00404   2.05272
    R5        4.22732  -0.00448   0.00000   0.12070   0.12158   4.34890
    R6        4.45784  -0.00297   0.00000  -0.05231  -0.05291   4.40493
    R7        4.45784  -0.00296   0.00000  -0.05264  -0.05323   4.40461
    R8        4.24781  -0.00183   0.00000   0.08246   0.08172   4.32954
    R9        1.83640   0.00117   0.00000   0.00230   0.00230   1.83870
    A1        1.72978  -0.00069   0.00000   0.06323   0.06318   1.79295
    A2        1.72978  -0.00069   0.00000   0.06328   0.06347   1.79325
    A3        1.74088  -0.00045   0.00000   0.05229   0.05263   1.79351
    A4        2.06131   0.00013   0.00000  -0.02603  -0.03482   2.02648
    A5        2.04365   0.00043   0.00000  -0.03529  -0.03894   2.00471
    A6        2.04365   0.00043   0.00000  -0.03529  -0.03897   2.00468
    A7        1.92138  -0.00236   0.00000  -0.09504  -0.09548   1.82591
    A8        0.80977   0.00086   0.00000   0.00403   0.00220   0.81197
    A9        0.82472   0.00088   0.00000  -0.00966  -0.01094   0.81378
   A10        1.66164  -0.00248   0.00000  -0.08608  -0.08521   1.57643
   A11        0.82472   0.00087   0.00000  -0.00962  -0.01084   0.81388
   A12        1.66164  -0.00247   0.00000  -0.08602  -0.08518   1.57645
   A13        2.40965  -0.00184   0.00000  -0.10597  -0.10618   2.30347
   A14        3.17371  -0.00028   0.00000  -0.01998  -0.01966   3.15405
   A15        3.19793  -0.00048   0.00000  -0.03399  -0.03386   3.16406
    D1        2.59837   0.00185   0.00000  -0.18569  -0.18064   2.41773
    D2        0.57841   0.00014   0.00000  -0.00487  -0.00635   0.57206
    D3       -0.58510  -0.00010   0.00000   0.00583   0.00443  -0.58067
    D4        2.18825  -0.00088   0.00000  -0.04179  -0.04294   2.14531
    D5        0.58510   0.00010   0.00000  -0.00588  -0.00451   0.58059
    D6       -2.18825   0.00087   0.00000   0.04197   0.04314  -2.14511
    D7       -0.00000  -0.00000   0.00000   0.00019   0.00018   0.00018
         Item               Value     Threshold  Converged?
 Maximum Force            0.006806     0.000015     NO 
 RMS     Force            0.001969     0.000010     NO 
 Maximum Displacement     0.133155     0.000060     NO 
 RMS     Displacement     0.044667     0.000040     NO 
 Predicted change in Energy= 4.720152D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.640197   -0.044957    0.000130
      2          6           0        0.357673    0.000251   -0.000007
      3          1           0        0.608479   -0.515928    0.920475
      4          1           0        0.608710   -0.516060   -0.920586
      5          1           0        0.573570    1.064830   -0.000028
      6          8           0        2.656377    0.110358   -0.000058
      7          1           0        2.946681   -0.818322    0.000080
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.998381   0.000000
     3  H    2.474953   1.084726   0.000000
     4  H    2.475325   1.084926   1.841061   0.000000
     5  H    2.476367   1.086251   1.829573   1.829720   0.000000
     6  O    4.299380   2.301340   2.330987   2.330818   2.291091
     7  H    4.651617   2.715331   2.530960   2.530829   3.029508
                    6          7
     6  O    0.000000
     7  H    0.972998   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.647555   -0.008384    0.000083
      2          6           0        0.350683    0.015524   -0.000054
      3          1           0        0.595972   -0.503298    0.920428
      4          1           0        0.596201   -0.503433   -0.920633
      5          1           0        0.577916    1.077742   -0.000075
      6          8           0        2.650430    0.101121   -0.000105
      7          1           0        2.930817   -0.830602    0.000033
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    119.8478679      2.3011951      2.2928345
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        88.8578408445 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  2.03D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000   -0.000000    0.000000
         Rot=    1.000000    0.000002   -0.000017    0.000354 Ang=   0.04 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411205.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.489755014     A.U. after   12 cycles
            NFock= 12  Conv=0.97D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2012315844D-01 E2=     -0.6091603727D-01
     alpha-beta  T2 =       0.1191423702D+00 E2=     -0.3673308535D+00
     beta-beta   T2 =       0.2012315844D-01 E2=     -0.6091603727D-01
 ANorm=    0.1076749129D+01
 E2 =    -0.4891629280D+00 EUMP2 =    -0.57497891794234D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353121.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.16D-03 Max=1.22D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.92D-03 Max=2.11D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.20D-04 Max=5.98D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.02D-04 Max=2.04D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.82D-05 Max=7.15D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.71D-05 Max=1.69D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.41D-06 Max=3.98D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.01D-06 Max=8.93D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.41D-07 Max=2.58D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.44D-08 Max=7.10D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.19D-08 Max=1.27D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.83D-09 Max=1.29D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.87D-10 Max=2.11D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.06D-11 Max=4.80D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.003533005   -0.000192089   -0.000007182
      2        6           0.008520382   -0.000882752   -0.000113246
      3        1           0.000715192    0.000241978    0.000194762
      4        1           0.000665564    0.000312446   -0.000072765
      5        1          -0.000241508    0.000124717   -0.000001695
      6        8          -0.003373259    0.001729473   -0.000000625
      7        1          -0.002753365   -0.001333772    0.000000752
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.008520382 RMS     0.002297677

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.003536446 RMS     0.001067813
 Search for a saddle point.
 Step number   2 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    1    2
 ITU=  0  0
     Eigenvalues ---   -0.01854  -0.00008   0.00392   0.01167   0.01275
     Eigenvalues ---    0.01695   0.05197   0.05570   0.09105   0.09213
     Eigenvalues ---    0.10136   0.32160   0.35762   0.36026   0.50314
 Eigenvectors required to have negative eigenvalues:
                          R5        D1        R1        A1        A2
   1                    0.54076  -0.49788  -0.46905   0.17682   0.17676
                          A3        R8        R6        R7        A6
   1                    0.16260   0.15173   0.13649   0.13558  -0.12920
 RFO step:  Lambda0=1.285455932D-03 Lambda=-1.00505417D-03.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.681
 Iteration  1 RMS(Cart)=  0.04675193 RMS(Int)=  0.00279772
 Iteration  2 RMS(Cart)=  0.00205300 RMS(Int)=  0.00135147
 Iteration  3 RMS(Cart)=  0.00000144 RMS(Int)=  0.00135147
 Iteration  4 RMS(Cart)=  0.00000000 RMS(Int)=  0.00135147
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.77639   0.00354   0.00000  -0.08698  -0.08698   3.68942
    R2        2.04983   0.00030   0.00000   0.00211   0.00261   2.05245
    R3        2.05021   0.00017   0.00000   0.00237   0.00323   2.05345
    R4        2.05272   0.00029   0.00000   0.00370   0.00370   2.05642
    R5        4.34890  -0.00245   0.00000   0.11380   0.11385   4.46275
    R6        4.40493  -0.00160   0.00000  -0.03957  -0.03968   4.36525
    R7        4.40461  -0.00160   0.00000  -0.03984  -0.03983   4.36478
    R8        4.32954  -0.00060   0.00000   0.12338   0.12279   4.45233
    R9        1.83870   0.00045   0.00000   0.00136   0.00136   1.84006
    A1        1.79295  -0.00043   0.00000   0.04881   0.04858   1.84153
    A2        1.79325  -0.00046   0.00000   0.04907   0.04925   1.84250
    A3        1.79351  -0.00039   0.00000   0.03455   0.03454   1.82804
    A4        2.02648   0.00029   0.00000  -0.02816  -0.03381   1.99267
    A5        2.00471   0.00031   0.00000  -0.03324  -0.03431   1.97040
    A6        2.00468   0.00032   0.00000  -0.03325  -0.03433   1.97035
    A7        1.82591  -0.00138   0.00000  -0.10243  -0.10277   1.72314
    A8        0.81197   0.00049   0.00000   0.00114  -0.00022   0.81176
    A9        0.81378   0.00043   0.00000  -0.01545  -0.01634   0.79744
   A10        1.57643  -0.00140   0.00000  -0.08845  -0.08772   1.48871
   A11        0.81388   0.00040   0.00000  -0.01538  -0.01621   0.79767
   A12        1.57645  -0.00139   0.00000  -0.08830  -0.08759   1.48886
   A13        2.30347  -0.00114   0.00000  -0.11484  -0.11482   2.18866
   A14        3.15405  -0.00018   0.00000  -0.02265  -0.02233   3.13172
   A15        3.16406  -0.00033   0.00000  -0.03985  -0.04002   3.12405
    D1        2.41773   0.00124   0.00000  -0.12775  -0.12501   2.29272
    D2        0.57206  -0.00002   0.00000  -0.01244  -0.01391   0.55815
    D3       -0.58067  -0.00006   0.00000   0.00191   0.00058  -0.58009
    D4        2.14531  -0.00060   0.00000  -0.05026  -0.05151   2.09380
    D5        0.58059   0.00008   0.00000  -0.00197  -0.00068   0.57991
    D6       -2.14511   0.00060   0.00000   0.05069   0.05199  -2.09312
    D7        0.00018  -0.00000   0.00000   0.00033   0.00031   0.00049
         Item               Value     Threshold  Converged?
 Maximum Force            0.003536     0.000015     NO 
 RMS     Force            0.001068     0.000010     NO 
 Maximum Displacement     0.142412     0.000060     NO 
 RMS     Displacement     0.046399     0.000040     NO 
 Predicted change in Energy= 1.054746D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.620489   -0.094138    0.000524
      2          6           0        0.328840    0.014525   -0.000123
      3          1           0        0.647740   -0.481987    0.911693
      4          1           0        0.648297   -0.482133   -0.912295
      5          1           0        0.546699    1.080705   -0.000053
      6          8           0        2.688886    0.099837   -0.000037
      7          1           0        2.871319   -0.856637    0.000298
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.952355   0.000000
     3  H    2.474979   1.086108   0.000000
     4  H    2.476120   1.086637   1.823988   0.000000
     5  H    2.465149   1.088210   1.812042   1.812449   0.000000
     6  O    4.313738   2.361588   2.309988   2.309742   2.356070
     7  H    4.556067   2.687587   2.432140   2.432058   3.026079
                    6          7
     6  O    0.000000
     7  H    0.973717   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.639798   -0.018264    0.000074
      2          6           0        0.311378    0.049578   -0.000286
      3          1           0        0.619688   -0.453641    0.911496
      4          1           0        0.620500   -0.453518   -0.912492
      5          1           0        0.551504    1.110964   -0.000018
      6          8           0        2.672693    0.085477    0.000140
      7          1           0        2.835068   -0.874606    0.000350
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    119.5087493      2.2996455      2.2905171
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.2159831252 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.96D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=     0.000000    0.000000    0.000000
         Rot=    1.000000   -0.000077    0.000026    0.000321 Ang=  -0.04 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411358.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.488832769     A.U. after   12 cycles
            NFock= 12  Conv=0.94D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2017418533D-01 E2=     -0.6107674577D-01
     alpha-beta  T2 =       0.1190309165D+00 E2=     -0.3677788030D+00
     beta-beta   T2 =       0.2017418533D-01 E2=     -0.6107674577D-01
 ANorm=    0.1076744764D+01
 E2 =    -0.4899322946D+00 EUMP2 =    -0.57497876506308D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353444.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.93D-03 Max=1.19D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.80D-03 Max=1.95D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=5.84D-04 Max=6.31D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.87D-04 Max=2.14D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.37D-05 Max=6.65D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.61D-05 Max=1.54D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=3.95D-06 Max=3.75D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=9.20D-07 Max=8.45D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.12D-07 Max=1.80D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.32D-08 Max=5.68D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.03D-08 Max=1.41D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.64D-09 Max=1.17D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.60D-10 Max=1.70D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=4.65D-11 Max=3.48D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.002148588   -0.000213987   -0.000029492
      2        6           0.005650570   -0.000695810   -0.000267758
      3        1           0.000127690    0.000205960    0.000322389
      4        1          -0.000031078    0.000377739   -0.000014235
      5        1          -0.000724237    0.000307192   -0.000005807
      6        8          -0.001333464    0.000419527   -0.000005717
      7        1          -0.001540893   -0.000400620    0.000000620
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.005650570 RMS     0.001423649

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.002157158 RMS     0.000624896
 Search for a saddle point.
 Step number   3 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    2    3
 ITU=  0  0  0
     Eigenvalues ---   -0.01455  -0.00008   0.00186   0.01165   0.01263
     Eigenvalues ---    0.01727   0.05196   0.05540   0.09105   0.09212
     Eigenvalues ---    0.10086   0.32111   0.35669   0.35939   0.50314
 Eigenvectors required to have negative eigenvalues:
                          R5        D1        R1        A1        A2
   1                    0.53826  -0.45684  -0.45367   0.17158   0.17066
                          A3        R6        R7        A10       A12
   1                    0.16006   0.15323   0.15240   0.14677   0.14663
 RFO step:  Lambda0=6.557078011D-04 Lambda=-4.32243557D-04.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.685
 Iteration  1 RMS(Cart)=  0.04554601 RMS(Int)=  0.00236738
 Iteration  2 RMS(Cart)=  0.00176182 RMS(Int)=  0.00104688
 Iteration  3 RMS(Cart)=  0.00000106 RMS(Int)=  0.00104688
 Iteration  4 RMS(Cart)=  0.00000000 RMS(Int)=  0.00104688
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.68942   0.00216   0.00000  -0.07574  -0.07574   3.61367
    R2        2.05245   0.00018   0.00000   0.00251   0.00286   2.05530
    R3        2.05345  -0.00015   0.00000   0.00244   0.00316   2.05661
    R4        2.05642   0.00018   0.00000   0.00385   0.00375   2.06016
    R5        4.46275  -0.00139   0.00000   0.12359   0.12306   4.58582
    R6        4.36525  -0.00082   0.00000  -0.02071  -0.02048   4.34476
    R7        4.36478  -0.00083   0.00000  -0.02063  -0.02017   4.34461
    R8        4.45233   0.00012   0.00000   0.16657   0.16600   4.61833
    R9        1.84006   0.00010   0.00000   0.00077   0.00077   1.84083
    A1        1.84153  -0.00032   0.00000   0.04071   0.04036   1.88190
    A2        1.84250  -0.00040   0.00000   0.04076   0.04101   1.88350
    A3        1.82804  -0.00034   0.00000   0.02274   0.02248   1.85053
    A4        1.99267   0.00035   0.00000  -0.02842  -0.03263   1.96004
    A5        1.97040   0.00025   0.00000  -0.02913  -0.02906   1.94134
    A6        1.97035   0.00028   0.00000  -0.02919  -0.02915   1.94120
    A7        1.72314  -0.00073   0.00000  -0.09095  -0.09120   1.63194
    A8        0.81176   0.00027   0.00000  -0.00280  -0.00396   0.80780
    A9        0.79744   0.00021   0.00000  -0.02177  -0.02245   0.77499
   A10        1.48871  -0.00071   0.00000  -0.07342  -0.07277   1.41594
   A11        0.79767   0.00015   0.00000  -0.02183  -0.02245   0.77522
   A12        1.48886  -0.00068   0.00000  -0.07362  -0.07300   1.41587
   A13        2.18866  -0.00062   0.00000  -0.10545  -0.10529   2.08337
   A14        3.13172  -0.00013   0.00000  -0.02448  -0.02413   3.10759
   A15        3.12405  -0.00030   0.00000  -0.04596  -0.04637   3.07768
    D1        2.29272   0.00099   0.00000  -0.09520  -0.09384   2.19888
    D2        0.55815  -0.00012   0.00000  -0.01971  -0.02123   0.53692
    D3       -0.58009  -0.00005   0.00000  -0.00128  -0.00257  -0.58266
    D4        2.09380  -0.00039   0.00000  -0.05163  -0.05296   2.04084
    D5        0.57991   0.00008   0.00000   0.00135   0.00263   0.58254
    D6       -2.09312   0.00038   0.00000   0.05112   0.05247  -2.04065
    D7        0.00049   0.00000   0.00000  -0.00045  -0.00045   0.00003
         Item               Value     Threshold  Converged?
 Maximum Force            0.002157     0.000015     NO 
 RMS     Force            0.000625     0.000010     NO 
 Maximum Displacement     0.117884     0.000060     NO 
 RMS     Displacement     0.045212     0.000040     NO 
 Predicted change in Energy= 8.937638D-05
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.601340   -0.143377    0.000908
      2          6           0        0.303192    0.028518   -0.000271
      3          1           0        0.680776   -0.445084    0.903082
      4          1           0        0.681558   -0.445245   -0.904045
      5          1           0        0.508782    1.099149   -0.000213
      6          8           0        2.729387    0.078542    0.000255
      7          1           0        2.808938   -0.892331    0.000290
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.912274   0.000000
     3  H    2.472448   1.087619   0.000000
     4  H    2.474205   1.088310   1.807128   0.000000
     5  H    2.448773   1.090192   1.797270   1.797754   0.000000
     6  O    4.336409   2.426711   2.299149   2.299069   2.443916
     7  H    4.473420   2.669592   2.354599   2.354454   3.042484
                    6          7
     6  O    0.000000
     7  H    0.974126   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.634643   -0.029774    0.000161
      2          6           0        0.274065    0.086954   -0.000608
      3          1           0        0.637621   -0.397786    0.902592
      4          1           0        0.638736   -0.397143   -0.904536
      5          1           0        0.510540    1.151190   -0.000018
      6          8           0        2.700691    0.066771    0.000363
      7          1           0        2.752123   -0.905997   -0.000038
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    117.8748691      2.2884553      2.2781791
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4527382726 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.89D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000    0.000000    0.000000
         Rot=    1.000000   -0.000173    0.000001    0.000102 Ang=  -0.02 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411526.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.488082282     A.U. after   12 cycles
            NFock= 12  Conv=0.87D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2020500172D-01 E2=     -0.6120465333D-01
     alpha-beta  T2 =       0.1188757466D+00 E2=     -0.3681136539D+00
     beta-beta   T2 =       0.2020500172D-01 E2=     -0.6120465333D-01
 ANorm=    0.1076701328D+01
 E2 =    -0.4905229606D+00 EUMP2 =    -0.57497860524288D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353615.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.67D-03 Max=1.13D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.69D-03 Max=1.78D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=5.46D-04 Max=6.14D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.73D-04 Max=2.15D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=5.91D-05 Max=5.97D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.50D-05 Max=1.39D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=3.49D-06 Max=3.65D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=8.12D-07 Max=7.88D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.81D-07 Max=1.41D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.72D-08 Max=1.86D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=4.52D-09 Max=5.56D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.03D-09 Max=1.79D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.29D-10 Max=2.17D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=4.47D-11 Max=3.67D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.002012769   -0.000350472   -0.000056197
      2        6           0.004961492   -0.000136511   -0.000308160
      3        1          -0.000124190    0.000071741    0.000377772
      4        1          -0.000373767    0.000265979    0.000002203
      5        1          -0.000864126    0.000423913   -0.000004355
      6        8          -0.000934625   -0.000203686   -0.000011870
      7        1          -0.000652015   -0.000070963    0.000000608
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.004961492 RMS     0.001225769

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.002036090 RMS     0.000507668
 Search for a saddle point.
 Step number   4 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    3    4
 ITU=  0  0  0  0
     Eigenvalues ---   -0.01100  -0.00008   0.00087   0.01163   0.01253
     Eigenvalues ---    0.01767   0.05195   0.05497   0.09106   0.09213
     Eigenvalues ---    0.10052   0.32037   0.35529   0.35806   0.50314
 Eigenvectors required to have negative eigenvalues:
                          R5        R1        D1        A7        A12
   1                    0.49386  -0.41669  -0.40187   0.22586   0.22503
                          A10       A13       R6        R7        A1
   1                    0.22491   0.20216   0.17726   0.17621   0.15537
 RFO step:  Lambda0=5.270985560D-04 Lambda=-8.34023917D-05.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.019
 Iteration  1 RMS(Cart)=  0.04798673 RMS(Int)=  0.07893693
 Iteration  2 RMS(Cart)=  0.04775672 RMS(Int)=  0.01828201
 Iteration  3 RMS(Cart)=  0.00993414 RMS(Int)=  0.01183573
 Iteration  4 RMS(Cart)=  0.00022627 RMS(Int)=  0.01183162
 Iteration  5 RMS(Cart)=  0.00000266 RMS(Int)=  0.01183162
 Iteration  6 RMS(Cart)=  0.00000004 RMS(Int)=  0.01183162
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.61367   0.00204   0.00000  -0.00165  -0.00165   3.61203
    R2        2.05530   0.00019   0.00000  -0.00053   0.00449   2.05979
    R3        2.05661  -0.00025   0.00000   0.00076   0.00096   2.05757
    R4        2.06016   0.00016   0.00000   0.00010   0.00906   2.06923
    R5        4.58582  -0.00100   0.00000   0.00239  -0.00125   4.58457
    R6        4.34476  -0.00049   0.00000   0.10351   0.10217   4.44693
    R7        4.34461  -0.00049   0.00000  -0.10269  -0.10338   4.24123
    R8        4.61833   0.00040   0.00000   0.00199   0.00118   4.61951
    R9        1.84083   0.00002   0.00000   0.00001   0.00001   1.84084
    A1        1.88190  -0.00033   0.00000  -0.01025  -0.01051   1.87139
    A2        1.88350  -0.00046   0.00000   0.01112   0.01055   1.89406
    A3        1.85053  -0.00022   0.00000   0.00081   0.00190   1.85242
    A4        1.96004   0.00032   0.00000  -0.00163   0.00130   1.96134
    A5        1.94134   0.00029   0.00000  -0.03589  -0.03843   1.90291
    A6        1.94120   0.00032   0.00000   0.03598   0.03444   1.97564
    A7        1.63194  -0.00030   0.00000   0.00047   0.00432   1.63626
    A8        0.80780   0.00018   0.00000  -0.00050   0.00032   0.80811
    A9        0.77499   0.00014   0.00000  -0.01810  -0.01610   0.75889
   A10        1.41594  -0.00030   0.00000  -0.16820  -0.14131   1.27463
   A11        0.77522   0.00007   0.00000   0.01773   0.01913   0.79435
   A12        1.41587  -0.00026   0.00000   0.16898   0.18473   1.60059
   A13        2.08337  -0.00024   0.00000   0.00027  -0.05171   2.03166
   A14        3.10759  -0.00014   0.00000   0.03944   0.03989   3.14747
   A15        3.07768  -0.00041   0.00000  -0.02302  -0.02163   3.05605
    D1        2.19888   0.00089   0.00000  -0.00208  -0.00209   2.19679
    D2        0.53692  -0.00011   0.00000   0.00395   0.00296   0.53988
    D3       -0.58266  -0.00001   0.00000  -0.03392  -0.03574  -0.61840
    D4        2.04084  -0.00021   0.00000   0.39774   0.41109   2.45193
    D5        0.58254   0.00006   0.00000  -0.03451  -0.03281   0.54973
    D6       -2.04065   0.00018   0.00000   0.39640   0.38310  -1.65755
    D7        0.00003   0.00001   0.00000   0.56248   0.55064   0.55068
         Item               Value     Threshold  Converged?
 Maximum Force            0.002036     0.000015     NO 
 RMS     Force            0.000508     0.000010     NO 
 Maximum Displacement     0.359733     0.000060     NO 
 RMS     Displacement     0.097905     0.000040     NO 
 Predicted change in Energy=-1.860107D-05
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.603889   -0.128421    0.013238
      2          6           0        0.301271    0.022614   -0.018628
      3          1           0        0.680929   -0.496443    0.861445
      4          1           0        0.667298   -0.413123   -0.946898
      5          1           0        0.523434    1.090869    0.073410
      6          8           0        2.722220    0.051496   -0.173212
      7          1           0        2.820030   -0.846819    0.190652
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.911403   0.000000
     3  H    2.464810   1.089994   0.000000
     4  H    2.482178   1.088820   1.810313   0.000000
     5  H    2.452711   1.094987   1.779147   1.823106   0.000000
     6  O    4.333861   2.426051   2.353215   2.244362   2.444540
     7  H    4.485379   2.672799   2.269026   2.473129   3.007113
                    6          7
     6  O    0.000000
     7  H    0.974133   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.634310   -0.024797   -0.016516
      2          6           0        0.273620    0.072919    0.044450
      3          1           0        0.613520   -0.688695    0.746232
      4          1           0        0.660450   -0.087348   -0.960640
      5          1           0        0.514960    1.062300    0.446791
      6          8           0        2.698389    0.073924   -0.034379
      7          1           0        2.765511   -0.893614    0.056721
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    117.1629122      2.2891294      2.2806458
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4448726272 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.88D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=     0.000000   -0.000000   -0.000000
         Rot=    0.990841   -0.135035    0.000342   -0.000005 Ang= -15.52 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411470.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487635386     A.U. after   13 cycles
            NFock= 13  Conv=0.55D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2021295651D-01 E2=     -0.6121433828D-01
     alpha-beta  T2 =       0.1189868424D+00 E2=     -0.3682426341D+00
     beta-beta   T2 =       0.2021295651D-01 E2=     -0.6121433828D-01
 ANorm=    0.1076760305D+01
 E2 =    -0.4906713106D+00 EUMP2 =    -0.57497830669634D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353596.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.64D-03 Max=1.14D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.69D-03 Max=1.73D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=5.47D-04 Max=6.13D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.72D-04 Max=2.02D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=5.91D-05 Max=6.03D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.50D-05 Max=1.43D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=3.54D-06 Max=3.79D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=8.22D-07 Max=7.05D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.88D-07 Max=1.44D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.08D-08 Max=3.10D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.37D-09 Max=8.63D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.29D-09 Max=1.16D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.38D-10 Max=1.59D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=4.82D-11 Max=3.69D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.002144258   -0.000282529    0.000244052
      2        6           0.005891498    0.003174624    0.003408169
      3        1          -0.002118733   -0.001749303   -0.000673224
      4        1           0.000979784    0.001537985    0.001142509
      5        1          -0.001322270   -0.002702444   -0.003384125
      6        8          -0.000932430    0.000272163   -0.000178275
      7        1          -0.000353590   -0.000250495   -0.000559106
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.005891498 RMS     0.002135342

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.002657918 RMS     0.001033542
 Search for a saddle point.
 Step number   5 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    4    5
 ITU=  0  0  0  0  0
     Eigenvalues ---   -0.01097  -0.00033   0.00145   0.01195   0.01253
     Eigenvalues ---    0.01760   0.05250   0.05488   0.09106   0.09212
     Eigenvalues ---    0.10046   0.31955   0.35404   0.35649   0.50314
 Eigenvectors required to have negative eigenvalues:
                          R5        R1        D1        A10       A7
   1                    0.49357  -0.41558  -0.40069   0.23907   0.22665
                          A12       A13       R6        R7        A6
   1                    0.21223   0.19721   0.18136   0.17256  -0.15961
 RFO step:  Lambda0=3.658441951D-04 Lambda=-8.73956747D-04.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.434
 Iteration  1 RMS(Cart)=  0.05949929 RMS(Int)=  0.00456623
 Iteration  2 RMS(Cart)=  0.00328487 RMS(Int)=  0.00179408
 Iteration  3 RMS(Cart)=  0.00000656 RMS(Int)=  0.00179406
 Iteration  4 RMS(Cart)=  0.00000001 RMS(Int)=  0.00179406
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.61203   0.00216   0.00000   0.01320   0.01320   3.62523
    R2        2.05979  -0.00069   0.00000   0.00087   0.00193   2.06172
    R3        2.05757  -0.00088   0.00000  -0.00307  -0.00288   2.05469
    R4        2.06923  -0.00266   0.00000  -0.00338  -0.00276   2.06646
    R5        4.58457  -0.00076   0.00000  -0.04473  -0.04535   4.53922
    R6        4.44693   0.00092   0.00000   0.11469   0.11407   4.56100
    R7        4.24123  -0.00158   0.00000  -0.04121  -0.04015   4.20108
    R8        4.61951  -0.00021   0.00000  -0.15443  -0.15502   4.46449
    R9        1.84084  -0.00001   0.00000  -0.00018  -0.00018   1.84066
    A1        1.87139  -0.00089   0.00000  -0.02374  -0.02401   1.84738
    A2        1.89406   0.00012   0.00000  -0.00228  -0.00182   1.89224
    A3        1.85242  -0.00032   0.00000   0.00425   0.00338   1.85580
    A4        1.96134  -0.00015   0.00000   0.00492   0.00357   1.96491
    A5        1.90291   0.00242   0.00000   0.03165   0.03557   1.93848
    A6        1.97564  -0.00123   0.00000  -0.01605  -0.01804   1.95760
    A7        1.63626  -0.00004   0.00000   0.10876   0.10811   1.74437
    A8        0.80811  -0.00034   0.00000  -0.00827  -0.00908   0.79903
    A9        0.75889  -0.00001   0.00000   0.01487   0.01415   0.77304
   A10        1.27463  -0.00010   0.00000   0.07180   0.07602   1.35065
   A11        0.79435  -0.00094   0.00000   0.01534   0.01487   0.80922
   A12        1.60059   0.00002   0.00000   0.12867   0.12831   1.72890
   A13        2.03166  -0.00015   0.00000   0.09404   0.09022   2.12187
   A14        3.14747  -0.00004   0.00000   0.05237   0.05246   3.19993
   A15        3.05605  -0.00033   0.00000   0.03443   0.03331   3.08936
    D1        2.19679   0.00079   0.00000   0.01928   0.01904   2.21583
    D2        0.53988   0.00027   0.00000   0.02857   0.02888   0.56875
    D3       -0.61840   0.00148   0.00000   0.00714   0.00765  -0.61075
    D4        2.45193   0.00063   0.00000   0.15083   0.14642   2.59835
    D5        0.54973   0.00049   0.00000  -0.00325  -0.00260   0.54712
    D6       -1.65755   0.00010   0.00000   0.01477   0.01443  -1.64312
    D7        0.55068  -0.00180   0.00000   0.12506   0.12928   0.67996
         Item               Value     Threshold  Converged?
 Maximum Force            0.002658     0.000015     NO 
 RMS     Force            0.001034     0.000010     NO 
 Maximum Displacement     0.175495     0.000060     NO 
 RMS     Displacement     0.059951     0.000040     NO 
 Predicted change in Energy=-2.360314D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.621391   -0.063302    0.002599
      2          6           0        0.295777    0.003991   -0.009831
      3          1           0        0.619256   -0.556467    0.868554
      4          1           0        0.648931   -0.436081   -0.939257
      5          1           0        0.566923    1.059898    0.075820
      6          8           0        2.688899    0.061060   -0.208757
      7          1           0        2.912898   -0.788927    0.210878
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.918389   0.000000
     3  H    2.452262   1.091013   0.000000
     4  H    2.486045   1.087297   1.812057   0.000000
     5  H    2.460825   1.093524   1.801055   1.809712   0.000000
     6  O    4.317260   2.402053   2.413577   2.223116   2.362507
     7  H    4.596704   2.743493   2.397367   2.563757   2.989981
                    6          7
     6  O    0.000000
     7  H    0.974036   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.635518   -0.007532   -0.019303
      2          6           0        0.281285    0.016434    0.054921
      3          1           0        0.569156   -0.877849    0.609627
      4          1           0        0.664466    0.017983   -0.962617
      5          1           0        0.556525    0.923139    0.600744
      6          8           0        2.680339    0.102084   -0.029115
      7          1           0        2.883230   -0.850499   -0.016215
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    119.3795434      2.2967237      2.2887640
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4502963064 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.90D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000    0.000000    0.000000
         Rot=    0.996787   -0.080103    0.000023   -0.000320 Ang=  -9.19 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411386.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.488247416     A.U. after   13 cycles
            NFock= 13  Conv=0.32D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2015710849D-01 E2=     -0.6112350627D-01
     alpha-beta  T2 =       0.1187887310D+00 E2=     -0.3678937605D+00
     beta-beta   T2 =       0.2015710849D-01 E2=     -0.6112350627D-01
 ANorm=    0.1076616435D+01
 E2 =    -0.4901407731D+00 EUMP2 =    -0.57497838818864D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353615.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.57D-03 Max=1.14D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.68D-03 Max=1.33D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=5.39D-04 Max=5.65D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.67D-04 Max=1.95D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=5.76D-05 Max=5.81D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.49D-05 Max=1.12D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=3.50D-06 Max=3.67D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=8.19D-07 Max=6.69D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.87D-07 Max=1.42D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.04D-08 Max=3.74D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=5.97D-09 Max=8.85D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.21D-09 Max=1.16D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.25D-10 Max=1.78D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=4.70D-11 Max=3.75D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.002684377   -0.000215284   -0.000008374
      2        6           0.005948972    0.002495257    0.002204876
      3        1          -0.001247386    0.000266788   -0.000988591
      4        1           0.000712023    0.000142491    0.000189910
      5        1          -0.001397663   -0.002819143   -0.000675178
      6        8          -0.000171040    0.000552916   -0.000796138
      7        1          -0.001160529   -0.000423023    0.000073495
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.005948972 RMS     0.001822544

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.002690166 RMS     0.000835414
 Search for a saddle point.
 Step number   6 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    6
 ITU=  0  0  0  0  0  0
     Eigenvalues ---   -0.01015  -0.00076   0.00335   0.01186   0.01257
     Eigenvalues ---    0.01760   0.05378   0.05501   0.09112   0.09214
     Eigenvalues ---    0.10092   0.31952   0.35435   0.35731   0.50315
 Eigenvectors required to have negative eigenvalues:
                          R5        R1        D1        R7        R8
   1                    0.54482  -0.42938  -0.42713   0.19935   0.18151
                          A10       A1        A6        A2        A3
   1                    0.17913   0.17674  -0.15830   0.15773   0.15224
 RFO step:  Lambda0=5.835550105D-04 Lambda=-9.61477815D-04.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.717
 Iteration  1 RMS(Cart)=  0.06086037 RMS(Int)=  0.03019678
 Iteration  2 RMS(Cart)=  0.02053702 RMS(Int)=  0.00515782
 Iteration  3 RMS(Cart)=  0.00079937 RMS(Int)=  0.00505209
 Iteration  4 RMS(Cart)=  0.00000187 RMS(Int)=  0.00505209
 Iteration  5 RMS(Cart)=  0.00000001 RMS(Int)=  0.00505209
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.62523   0.00269   0.00000  -0.04021  -0.04021   3.58502
    R2        2.06172  -0.00129   0.00000  -0.00585  -0.00290   2.05881
    R3        2.05469   0.00012   0.00000   0.00071   0.00081   2.05550
    R4        2.06646  -0.00261   0.00000  -0.00912  -0.00520   2.06126
    R5        4.53922  -0.00070   0.00000   0.08587   0.08377   4.62299
    R6        4.56100   0.00020   0.00000  -0.10474  -0.10543   4.45557
    R7        4.20108  -0.00117   0.00000   0.07247   0.07325   4.27433
    R8        4.46449   0.00003   0.00000   0.15403   0.15298   4.61747
    R9        1.84066   0.00013   0.00000   0.00023   0.00023   1.84089
    A1        1.84738  -0.00046   0.00000   0.03292   0.03244   1.87982
    A2        1.89224  -0.00017   0.00000   0.01227   0.01236   1.90460
    A3        1.85580  -0.00024   0.00000   0.00560   0.00550   1.86130
    A4        1.96491   0.00007   0.00000  -0.01577  -0.01744   1.94747
    A5        1.93848   0.00066   0.00000  -0.00493  -0.00231   1.93617
    A6        1.95760   0.00006   0.00000  -0.02456  -0.02616   1.93144
    A7        1.74437  -0.00049   0.00000  -0.06366  -0.06280   1.68157
    A8        0.79903  -0.00016   0.00000   0.00150   0.00068   0.79971
    A9        0.77304  -0.00061   0.00000  -0.00727  -0.00700   0.76604
   A10        1.35065  -0.00027   0.00000   0.00192   0.01823   1.36888
   A11        0.80922  -0.00041   0.00000  -0.03262  -0.03155   0.77766
   A12        1.72890  -0.00045   0.00000  -0.16491  -0.16083   1.56807
   A13        2.12187  -0.00085   0.00000   0.01142  -0.00991   2.11196
   A14        3.19993   0.00010   0.00000  -0.05714  -0.05666   3.14328
   A15        3.08936  -0.00047   0.00000  -0.02349  -0.02365   3.06571
    D1        2.21583   0.00067   0.00000  -0.04439  -0.04438   2.17145
    D2        0.56875   0.00029   0.00000  -0.02709  -0.02613   0.54262
    D3       -0.61075   0.00044   0.00000   0.02043   0.01933  -0.59142
    D4        2.59835   0.00001   0.00000  -0.29018  -0.28863   2.30972
    D5        0.54712  -0.00038   0.00000   0.02313   0.02399   0.57111
    D6       -1.64312   0.00018   0.00000  -0.18375  -0.18516  -1.82829
    D7        0.67996  -0.00057   0.00000  -0.35598  -0.35565   0.32431
         Item               Value     Threshold  Converged?
 Maximum Force            0.002690     0.000015     NO 
 RMS     Force            0.000835     0.000010     NO 
 Maximum Displacement     0.193100     0.000060     NO 
 RMS     Displacement     0.075618     0.000040     NO 
 Predicted change in Energy=-1.654515D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.607367   -0.124810    0.002155
      2          6           0        0.283826    0.024742   -0.004447
      3          1           0        0.659722   -0.486537    0.881136
      4          1           0        0.673214   -0.418892   -0.918071
      5          1           0        0.513098    1.090453    0.034045
      6          8           0        2.727699    0.067585   -0.106573
      7          1           0        2.861102   -0.872369    0.111760
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.897109   0.000000
     3  H    2.458282   1.089478   0.000000
     4  H    2.476762   1.087724   1.800529   0.000000
     5  H    2.444229   1.090773   1.796096   1.791726   0.000000
     6  O    4.340696   2.446382   2.357786   2.261879   2.443459
     7  H    4.531895   2.731421   2.363658   2.460294   3.061344
                    6          7
     6  O    0.000000
     7  H    0.974156   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.634433   -0.026237   -0.012562
      2          6           0        0.259396    0.074010    0.036248
      3          1           0        0.607376   -0.607254    0.811975
      4          1           0        0.655823   -0.195457   -0.940161
      5          1           0        0.511382    1.106324    0.282452
      6          8           0        2.705096    0.073980   -0.021477
      7          1           0        2.813632   -0.893475    0.013608
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    118.7523137      2.2822215      2.2726980
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.5193726967 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.86D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000   -0.000000   -0.000000
         Rot=    0.992324    0.123665   -0.000033   -0.000026 Ang=  14.21 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411484.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.488107459     A.U. after   13 cycles
            NFock= 13  Conv=0.25D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2015137532D-01 E2=     -0.6115946211D-01
     alpha-beta  T2 =       0.1185763319D+00 E2=     -0.3679108810D+00
     beta-beta   T2 =       0.2015137532D-01 E2=     -0.6115946211D-01
 ANorm=    0.1076512463D+01
 E2 =    -0.4902298052D+00 EUMP2 =    -0.57497833726427D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353577.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.44D-03 Max=1.09D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.62D-03 Max=1.44D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=5.18D-04 Max=5.60D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.59D-04 Max=1.99D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=5.51D-05 Max=5.47D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.43D-05 Max=1.24D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=3.28D-06 Max=3.52D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=7.80D-07 Max=6.21D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.88D-07 Max=1.70D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.59D-08 Max=6.07D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=7.97D-09 Max=9.74D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.35D-09 Max=8.94D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.39D-10 Max=1.70D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=4.65D-11 Max=3.11D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.003042622   -0.000358447   -0.000079875
      2        6           0.005723565    0.000006988    0.000430926
      3        1          -0.000880565    0.000608832    0.000051973
      4        1           0.000576686   -0.000444744   -0.000327233
      5        1          -0.000840415    0.000205295    0.000573400
      6        8          -0.000478089    0.000386202   -0.000488735
      7        1          -0.001058559   -0.000404126   -0.000160456
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.005723565 RMS     0.001498046

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.003061114 RMS     0.000703866
 Search for a saddle point.
 Step number   7 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    4    5    6    7
 ITU=  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00705  -0.00003   0.00458   0.01098   0.01251
     Eigenvalues ---    0.01737   0.05438   0.05488   0.09112   0.09213
     Eigenvalues ---    0.10122   0.32143   0.35559   0.35773   0.50316
 Eigenvectors required to have negative eigenvalues:
                          R5        D1        R1        R8        D7
   1                    0.54432  -0.40995  -0.40309   0.24749   0.20175
                          A2        R6        A1        A12       A4
   1                    0.16758   0.16590   0.16117   0.15997  -0.15769
 RFO step:  Lambda0=8.458395576D-04 Lambda=-5.72867550D-04.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.942
 Iteration  1 RMS(Cart)=  0.04951690 RMS(Int)=  0.02969960
 Iteration  2 RMS(Cart)=  0.02071146 RMS(Int)=  0.00479702
 Iteration  3 RMS(Cart)=  0.00078983 RMS(Int)=  0.00468309
 Iteration  4 RMS(Cart)=  0.00000243 RMS(Int)=  0.00468309
 Iteration  5 RMS(Cart)=  0.00000001 RMS(Int)=  0.00468309
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.58502   0.00306   0.00000  -0.05034  -0.05034   3.53467
    R2        2.05881  -0.00057   0.00000   0.00199   0.00512   2.06393
    R3        2.05550   0.00054   0.00000   0.00316   0.00357   2.05907
    R4        2.06126   0.00002   0.00000  -0.00069   0.00243   2.06370
    R5        4.62299  -0.00092   0.00000   0.09863   0.09688   4.71987
    R6        4.45557   0.00011   0.00000   0.16380   0.16322   4.61879
    R7        4.27433  -0.00106   0.00000  -0.11031  -0.11092   4.16342
    R8        4.61747   0.00037   0.00000   0.06851   0.06846   4.68593
    R9        1.84089   0.00021   0.00000   0.00063   0.00063   1.84151
    A1        1.87982  -0.00036   0.00000   0.00823   0.00827   1.88809
    A2        1.90460  -0.00032   0.00000   0.04164   0.04142   1.94602
    A3        1.86130  -0.00025   0.00000   0.02200   0.02269   1.88399
    A4        1.94747   0.00029   0.00000  -0.03079  -0.03048   1.91699
    A5        1.93617  -0.00001   0.00000  -0.02267  -0.02566   1.91051
    A6        1.93144   0.00059   0.00000  -0.01387  -0.01390   1.91754
    A7        1.68157  -0.00051   0.00000  -0.00845  -0.00680   1.67477
    A8        0.79971   0.00016   0.00000  -0.01608  -0.01756   0.78214
    A9        0.76604  -0.00015   0.00000  -0.02575  -0.02495   0.74109
   A10        1.36888  -0.00031   0.00000  -0.08780  -0.07384   1.29504
   A11        0.77766   0.00031   0.00000  -0.00341  -0.00374   0.77393
   A12        1.56807  -0.00063   0.00000   0.10909   0.11098   1.67904
   A13        2.11196  -0.00049   0.00000  -0.05880  -0.07658   2.03538
   A14        3.14328   0.00014   0.00000   0.04505   0.04523   3.18850
   A15        3.06571  -0.00046   0.00000  -0.03823  -0.03748   3.02823
    D1        2.17145   0.00079   0.00000  -0.06603  -0.06504   2.10641
    D2        0.54262   0.00014   0.00000   0.00209   0.00106   0.54368
    D3       -0.59142  -0.00033   0.00000  -0.01887  -0.02074  -0.61216
    D4        2.30972  -0.00051   0.00000   0.25744   0.26495   2.57467
    D5        0.57111  -0.00031   0.00000  -0.02273  -0.02337   0.54774
    D6       -1.82829  -0.00002   0.00000   0.24399   0.24236  -1.58593
    D7        0.32431   0.00008   0.00000   0.34855   0.34074   0.66505
         Item               Value     Threshold  Converged?
 Maximum Force            0.003061     0.000015     NO 
 RMS     Force            0.000704     0.000010     NO 
 Maximum Displacement     0.242203     0.000060     NO 
 RMS     Displacement     0.064458     0.000040     NO 
 Predicted change in Energy= 1.113646D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.610657   -0.109721   -0.010069
      2          6           0        0.255157    0.021943   -0.002528
      3          1           0        0.631248   -0.516725    0.869974
      4          1           0        0.688664   -0.396361   -0.910462
      5          1           0        0.517547    1.078695    0.081274
      6          8           0        2.741977    0.029465   -0.234742
      7          1           0        2.887357   -0.827123    0.206558
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.870469   0.000000
     3  H    2.442594   1.092185   0.000000
     4  H    2.485910   1.089611   1.785424   0.000000
     5  H    2.439247   1.092061   1.783351   1.785669   0.000000
     6  O    4.360651   2.497650   2.444156   2.203185   2.479686
     7  H    4.560014   2.773646   2.372024   2.503507   3.043656
                    6          7
     6  O    0.000000
     7  H    0.974487   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.634672   -0.018453   -0.030079
      2          6           0        0.230922    0.051507    0.085332
      3          1           0        0.567162   -0.796081    0.686502
      4          1           0        0.693730    0.012425   -0.900331
      5          1           0        0.502341    0.983261    0.586095
      6          8           0        2.724696    0.085509   -0.049531
      7          1           0        2.843086   -0.879011    0.023335
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    117.2172833      2.2633006      2.2559935
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.5693234026 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.80D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000    0.000000   -0.000000
         Rot=    0.995218   -0.097673    0.000736   -0.000080 Ang= -11.21 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411484.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487634496     A.U. after   13 cycles
            NFock= 13  Conv=0.31D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2013835152D-01 E2=     -0.6120538339D-01
     alpha-beta  T2 =       0.1183963352D+00 E2=     -0.3680098028D+00
     beta-beta   T2 =       0.2013835152D-01 E2=     -0.6120538339D-01
 ANorm=    0.1076416759D+01
 E2 =    -0.4904205696D+00 EUMP2 =    -0.57497805506547D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353545.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.16D-03 Max=1.04D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.53D-03 Max=1.52D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.87D-04 Max=5.16D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.46D-04 Max=1.82D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=5.16D-05 Max=4.97D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.37D-05 Max=1.17D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=3.26D-06 Max=3.37D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=8.25D-07 Max=8.49D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.34D-07 Max=3.44D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.97D-08 Max=6.85D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=9.08D-09 Max=6.85D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=7.68D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.84D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.23D-11 Max=3.77D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.003990234   -0.000346739   -0.000145918
      2        6           0.007996154    0.000576547    0.001947224
      3        1          -0.002057719    0.000025552   -0.000056523
      4        1           0.001035619   -0.000481238   -0.000446162
      5        1          -0.001230475    0.000163814   -0.000205027
      6        8          -0.000946973    0.000525947   -0.000807522
      7        1          -0.000806374   -0.000463883   -0.000286072
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.007996154 RMS     0.002118208

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.004005299 RMS     0.000934299
 Search for a saddle point.
 Step number   8 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    6    7    8
 ITU=  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00046   0.00119   0.00540   0.00992   0.01247
     Eigenvalues ---    0.01745   0.05358   0.05458   0.09111   0.09212
     Eigenvalues ---    0.10212   0.31896   0.35239   0.35624   0.50317
 Eigenvectors required to have negative eigenvalues:
                          D7        D4        R6        D6        R7
   1                    0.58003   0.50046   0.36396   0.35531  -0.24349
                          A12       A14       A13       D5        A7
   1                    0.22913   0.12761  -0.08797  -0.05154   0.05131
 RFO step:  Lambda0=1.457894307D-04 Lambda=-1.62934990D-03.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.743
 Iteration  1 RMS(Cart)=  0.05691119 RMS(Int)=  0.00790521
 Iteration  2 RMS(Cart)=  0.00539600 RMS(Int)=  0.00248888
 Iteration  3 RMS(Cart)=  0.00005792 RMS(Int)=  0.00248776
 Iteration  4 RMS(Cart)=  0.00000011 RMS(Int)=  0.00248776
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.53467   0.00401   0.00000   0.11622   0.11622   3.65090
    R2        2.06393  -0.00090   0.00000  -0.00858  -0.00704   2.05689
    R3        2.05907   0.00071   0.00000  -0.00453  -0.00448   2.05459
    R4        2.06370  -0.00015   0.00000  -0.00595  -0.00395   2.05974
    R5        4.71987  -0.00123   0.00000  -0.15616  -0.15650   4.56337
    R6        4.61879   0.00086   0.00000  -0.11656  -0.11731   4.50148
    R7        4.16342  -0.00161   0.00000  -0.00284  -0.00277   4.16064
    R8        4.68593   0.00034   0.00000  -0.01827  -0.01885   4.66707
    R9        1.84151   0.00016   0.00000  -0.00098  -0.00098   1.84054
    A1        1.88809  -0.00062   0.00000  -0.04100  -0.04068   1.84740
    A2        1.94602  -0.00042   0.00000  -0.05288  -0.05270   1.89332
    A3        1.88399  -0.00050   0.00000  -0.04878  -0.04863   1.83536
    A4        1.91699   0.00029   0.00000   0.05252   0.04883   1.96582
    A5        1.91051   0.00080   0.00000   0.04710   0.04655   1.95706
    A6        1.91754   0.00045   0.00000   0.04188   0.03797   1.95552
    A7        1.67477  -0.00040   0.00000  -0.06061  -0.05959   1.61518
    A8        0.78214   0.00005   0.00000   0.02733   0.02630   0.80844
    A9        0.74109  -0.00008   0.00000   0.02108   0.02154   0.76263
   A10        1.29504  -0.00023   0.00000  -0.02629  -0.01797   1.27707
   A11        0.77393   0.00030   0.00000   0.01261   0.01180   0.78573
   A12        1.67904  -0.00055   0.00000  -0.12908  -0.13062   1.54842
   A13        2.03538  -0.00030   0.00000   0.00180  -0.00621   2.02917
   A14        3.18850   0.00042   0.00000  -0.02827  -0.02842   3.16009
   A15        3.02823  -0.00049   0.00000  -0.00055  -0.00058   3.02766
    D1        2.10641   0.00114   0.00000   0.12065   0.12407   2.23048
    D2        0.54368   0.00047   0.00000  -0.00121  -0.00055   0.54313
    D3       -0.61216  -0.00002   0.00000   0.01210   0.01287  -0.59929
    D4        2.57467  -0.00019   0.00000  -0.20145  -0.20131   2.37336
    D5        0.54774  -0.00022   0.00000   0.01503   0.01376   0.56150
    D6       -1.58593  -0.00025   0.00000  -0.12851  -0.12845  -1.71438
    D7        0.66505  -0.00042   0.00000  -0.23621  -0.23475   0.43030
         Item               Value     Threshold  Converged?
 Maximum Force            0.004005     0.000015     NO 
 RMS     Force            0.000934     0.000010     NO 
 Maximum Displacement     0.166909     0.000060     NO 
 RMS     Displacement     0.058549     0.000040     NO 
 Predicted change in Energy=-7.510687D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.605707   -0.148510   -0.006795
      2          6           0        0.317778    0.032230    0.000580
      3          1           0        0.661850   -0.488478    0.892330
      4          1           0        0.708413   -0.403943   -0.915526
      5          1           0        0.503043    1.104995    0.054300
      6          8           0        2.726884    0.053230   -0.164310
      7          1           0        2.799033   -0.869351    0.139428
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.931972   0.000000
     3  H    2.462888   1.088459   0.000000
     4  H    2.499238   1.087241   1.810431   0.000000
     5  H    2.453943   1.089969   1.807393   1.805445   0.000000
     6  O    4.340144   2.414833   2.382079   2.201717   2.469709
     7  H    4.465728   2.643625   2.297712   2.387514   3.029332
                    6          7
     6  O    0.000000
     7  H    0.973970   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.638645   -0.028286   -0.022278
      2          6           0        0.287991    0.085114    0.065630
      3          1           0        0.594190   -0.637544    0.819785
      4          1           0        0.691737   -0.140477   -0.918337
      5          1           0        0.499595    1.110281    0.369420
      6          8           0        2.700401    0.067495   -0.041085
      7          1           0        2.740288   -0.902041    0.042748
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    114.6432085      2.2824280      2.2733104
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.1881662404 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.92D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=     0.000000   -0.000000    0.000000
         Rot=    0.996602    0.082359   -0.000473    0.000685 Ang=   9.45 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411428.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.488160366     A.U. after   12 cycles
            NFock= 12  Conv=0.89D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2024063050D-01 E2=     -0.6119876643D-01
     alpha-beta  T2 =       0.1191840683D+00 E2=     -0.3682061162D+00
     beta-beta   T2 =       0.2024063050D-01 E2=     -0.6119876643D-01
 ANorm=    0.1076877583D+01
 E2 =    -0.4906036491D+00 EUMP2 =    -0.57497876401459D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353647.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.88D-03 Max=1.15D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.76D-03 Max=1.74D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=5.73D-04 Max=6.54D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.86D-04 Max=2.18D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.31D-05 Max=6.42D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.59D-05 Max=1.50D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=3.84D-06 Max=3.83D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=8.77D-07 Max=7.43D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.97D-07 Max=1.28D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.21D-08 Max=1.96D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.97D-09 Max=1.06D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.41D-09 Max=1.77D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.54D-10 Max=1.75D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.54D-11 Max=4.20D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000213279   -0.000007867    0.000017743
      2        6           0.002623681   -0.000599471   -0.000191018
      3        1          -0.000736924    0.000483541    0.000370798
      4        1           0.000602538   -0.000067447   -0.000038271
      5        1          -0.000091897    0.000115631    0.000283901
      6        8          -0.001823148    0.000224013   -0.000089744
      7        1          -0.000360971   -0.000148400   -0.000353410
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.002623681 RMS     0.000767513

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.001049140 RMS     0.000351265
 Search for a saddle point.
 Step number   9 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    6    7    8    9
 ITU=  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00088   0.00112   0.00528   0.00579   0.01343
     Eigenvalues ---    0.01864   0.05517   0.05577   0.09110   0.09214
     Eigenvalues ---    0.10372   0.32126   0.35461   0.35740   0.50317
 Eigenvectors required to have negative eigenvalues:
                          D7        D4        R6        D6        R7
   1                    0.56382   0.46760   0.39250   0.34537  -0.30839
                          A12       A14       A10       D5        A15
   1                    0.22028   0.14007  -0.08438  -0.05177  -0.05056
 RFO step:  Lambda0=3.072499546D-06 Lambda=-6.03718096D-04.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.911
 Iteration  1 RMS(Cart)=  0.03773177 RMS(Int)=  0.00103012
 Iteration  2 RMS(Cart)=  0.00058551 RMS(Int)=  0.00069609
 Iteration  3 RMS(Cart)=  0.00000027 RMS(Int)=  0.00069609
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.65090   0.00021   0.00000   0.07438   0.07438   3.72528
    R2        2.05689  -0.00020   0.00000  -0.00315  -0.00277   2.05411
    R3        2.05459   0.00020   0.00000  -0.00458  -0.00470   2.04989
    R4        2.05974   0.00014   0.00000  -0.00208  -0.00231   2.05744
    R5        4.56337  -0.00099   0.00000  -0.19418  -0.19415   4.36922
    R6        4.50148   0.00014   0.00000  -0.05232  -0.05243   4.44905
    R7        4.16064  -0.00105   0.00000  -0.11833  -0.11827   4.04237
    R8        4.66707  -0.00030   0.00000  -0.13469  -0.13467   4.53240
    R9        1.84054   0.00000   0.00000  -0.00109  -0.00109   1.83945
    A1        1.84740  -0.00036   0.00000  -0.04416  -0.04421   1.80320
    A2        1.89332  -0.00007   0.00000  -0.03193  -0.03172   1.86161
    A3        1.83536  -0.00025   0.00000  -0.03151  -0.03145   1.80391
    A4        1.96582   0.00036   0.00000   0.04365   0.04142   2.00724
    A5        1.95706  -0.00009   0.00000   0.01932   0.01775   1.97481
    A6        1.95552   0.00032   0.00000   0.03164   0.03052   1.98604
    A7        1.61518  -0.00017   0.00000  -0.01608  -0.01618   1.59900
    A8        0.80844   0.00017   0.00000   0.02642   0.02612   0.83456
    A9        0.76263  -0.00002   0.00000   0.02137   0.02122   0.78385
   A10        1.27707  -0.00004   0.00000  -0.01102  -0.00997   1.26709
   A11        0.78573   0.00027   0.00000   0.03201   0.03253   0.81825
   A12        1.54842  -0.00029   0.00000  -0.03926  -0.03992   1.50850
   A13        2.02917  -0.00008   0.00000   0.00476   0.00491   2.03409
   A14        3.16009   0.00017   0.00000   0.01660   0.01678   3.17687
   A15        3.02766  -0.00008   0.00000   0.00630   0.00617   3.03383
    D1        2.23048   0.00069   0.00000   0.10160   0.10308   2.33356
    D2        0.54313   0.00004   0.00000   0.01018   0.01075   0.55388
    D3       -0.59929  -0.00027   0.00000  -0.00854  -0.00887  -0.60816
    D4        2.37336  -0.00045   0.00000  -0.05168  -0.05145   2.32191
    D5        0.56150  -0.00014   0.00000  -0.00478  -0.00424   0.55726
    D6       -1.71438  -0.00017   0.00000  -0.03680  -0.03582  -1.75020
    D7        0.43030  -0.00004   0.00000  -0.04096  -0.04135   0.38895
         Item               Value     Threshold  Converged?
 Maximum Force            0.001049     0.000015     NO 
 RMS     Force            0.000351     0.000010     NO 
 Maximum Displacement     0.111003     0.000060     NO 
 RMS     Displacement     0.037659     0.000040     NO 
 Predicted change in Energy=-3.293862D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.592502   -0.152256   -0.018082
      2          6           0        0.370396    0.028442    0.004953
      3          1           0        0.658688   -0.488286    0.916780
      4          1           0        0.734977   -0.421832   -0.912121
      5          1           0        0.523258    1.105168    0.056578
      6          8           0        2.676184    0.070582   -0.160379
      7          1           0        2.740292   -0.861645    0.112277
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.971332   0.000000
     3  H    2.460638   1.086991   0.000000
     4  H    2.507815   1.084753   1.831697   0.000000
     5  H    2.462343   1.088748   1.815871   1.820696   0.000000
     6  O    4.276866   2.312091   2.354335   2.139128   2.398442
     7  H    4.392418   2.533808   2.262675   2.294366   2.964236
                    6          7
     6  O    0.000000
     7  H    0.973396   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.629022   -0.025044   -0.023276
      2          6           0        0.337447    0.077645    0.069484
      3          1           0        0.587237   -0.618984    0.865638
      4          1           0        0.709801   -0.195210   -0.912143
      5          1           0        0.522726    1.116813    0.336268
      6          8           0        2.646746    0.069630   -0.043826
      7          1           0        2.674956   -0.899771    0.039633
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    113.5100347      2.3413495      2.3324492
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.5610798454 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.98D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000   -0.000000    0.000000
         Rot=    0.999891    0.014721   -0.000155    0.000668 Ang=   1.69 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411525.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487748165     A.U. after   12 cycles
            NFock= 12  Conv=0.52D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2037104547D-01 E2=     -0.6139340812D-01
     alpha-beta  T2 =       0.1198281445D+00 E2=     -0.3687407106D+00
     beta-beta   T2 =       0.2037104547D-01 E2=     -0.6139340812D-01
 ANorm=    0.1077297654D+01
 E2 =    -0.4915275269D+00 EUMP2 =    -0.57497927569196D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353723.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.34D-03 Max=1.31D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.96D-03 Max=1.61D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.47D-04 Max=7.67D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.23D-04 Max=2.09D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=7.49D-05 Max=8.13D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.85D-05 Max=1.49D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.82D-06 Max=4.88D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.11D-06 Max=1.12D-05 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.90D-07 Max=3.09D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=6.99D-08 Max=7.98D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.32D-08 Max=9.63D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.90D-09 Max=1.06D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.13D-10 Max=2.49D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=6.60D-11 Max=5.76D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.003821867   -0.000265651    0.000027698
      2        6           0.005927047    0.000509438    0.000452249
      3        1          -0.000381548   -0.000193702    0.000016980
      4        1          -0.000677959   -0.000081672   -0.000390034
      5        1          -0.000296148   -0.000056127   -0.000457479
      6        8          -0.000963695   -0.000121647    0.000629528
      7        1           0.000214171    0.000209361   -0.000278942
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.005927047 RMS     0.001586869

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.003829542 RMS     0.000729442
 Search for a saddle point.
 Step number  10 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    9   10
 ITU=  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00489  -0.00030   0.00532   0.00633   0.01340
     Eigenvalues ---    0.01842   0.05531   0.05564   0.09108   0.09215
     Eigenvalues ---    0.10234   0.32204   0.35522   0.35811   0.50316
 Eigenvectors required to have negative eigenvalues:
                          R5        R8        D1        R1        R6
   1                    0.51990   0.42299  -0.37590  -0.34552   0.30184
                          D7        A2        D6        A4        A1
   1                    0.17152   0.15859   0.13071  -0.12376   0.12171
 RFO step:  Lambda0=9.706426024D-04 Lambda=-6.64661434D-04.
 Linear search not attempted -- option 19 set.
 Maximum step size (   0.300) exceeded in Quadratic search.
    -- Step size scaled by   0.569
 Iteration  1 RMS(Cart)=  0.05367551 RMS(Int)=  0.01385014
 Iteration  2 RMS(Cart)=  0.01035905 RMS(Int)=  0.00324046
 Iteration  3 RMS(Cart)=  0.00018145 RMS(Int)=  0.00323229
 Iteration  4 RMS(Cart)=  0.00000044 RMS(Int)=  0.00323229
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.72528   0.00383   0.00000  -0.00817  -0.00817   3.71711
    R2        2.05411   0.00002   0.00000   0.00276   0.00567   2.05979
    R3        2.04989   0.00009   0.00000   0.00254   0.00306   2.05295
    R4        2.05744  -0.00008   0.00000  -0.00181   0.00030   2.05773
    R5        4.36922  -0.00060   0.00000   0.04405   0.04288   4.41210
    R6        4.44905  -0.00018   0.00000   0.20663   0.20520   4.65425
    R7        4.04237   0.00030   0.00000  -0.14548  -0.14558   3.89679
    R8        4.53240  -0.00026   0.00000   0.02164   0.02181   4.55421
    R9        1.83945  -0.00026   0.00000   0.00017   0.00017   1.83962
    A1        1.80320  -0.00025   0.00000  -0.01608  -0.01596   1.78724
    A2        1.86161  -0.00017   0.00000   0.02689   0.02685   1.88846
    A3        1.80391  -0.00035   0.00000   0.00738   0.00803   1.81193
    A4        2.00724   0.00015   0.00000  -0.00937  -0.00750   1.99974
    A5        1.97481   0.00041   0.00000  -0.00451  -0.00552   1.96929
    A6        1.98604   0.00005   0.00000  -0.00086  -0.00263   1.98341
    A7        1.59900   0.00012   0.00000   0.01923   0.01940   1.61840
    A8        0.83456   0.00007   0.00000  -0.01690  -0.01932   0.81525
    A9        0.78385   0.00014   0.00000  -0.02113  -0.02073   0.76312
   A10        1.26709   0.00007   0.00000  -0.04350  -0.03316   1.23394
   A11        0.81825   0.00003   0.00000   0.00732   0.00657   0.82483
   A12        1.50850   0.00006   0.00000   0.10813   0.10826   1.61676
   A13        2.03409   0.00019   0.00000  -0.02528  -0.03748   1.99661
   A14        3.17687  -0.00007   0.00000   0.06814   0.06829   3.24516
   A15        3.03383   0.00024   0.00000  -0.03111  -0.03053   3.00330
    D1        2.33356   0.00070   0.00000  -0.01944  -0.01921   2.31435
    D2        0.55388   0.00010   0.00000   0.01635   0.01705   0.57093
    D3       -0.60816   0.00018   0.00000  -0.01831  -0.01912  -0.62727
    D4        2.32191   0.00009   0.00000   0.22338   0.22782   2.54973
    D5        0.55726   0.00009   0.00000  -0.02451  -0.02468   0.53258
    D6       -1.75020  -0.00012   0.00000   0.16704   0.16453  -1.58567
    D7        0.38895  -0.00028   0.00000   0.26823   0.26523   0.65418
         Item               Value     Threshold  Converged?
 Maximum Force            0.003830     0.000015     NO 
 RMS     Force            0.000729     0.000010     NO 
 Maximum Displacement     0.223886     0.000060     NO 
 RMS     Displacement     0.060606     0.000040     NO 
 Predicted change in Energy= 1.312605D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.603327   -0.125009   -0.045650
      2          6           0        0.357266    0.020911    0.016897
      3          1           0        0.603223   -0.520034    0.930662
      4          1           0        0.759452   -0.419558   -0.891092
      5          1           0        0.535829    1.091943    0.098865
      6          8           0        2.673120    0.044404   -0.278854
      7          1           0        2.785730   -0.812486    0.169178
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.967010   0.000000
     3  H    2.445014   1.089992   0.000000
     4  H    2.526709   1.086375   1.831198   0.000000
     5  H    2.465328   1.088905   1.815185   1.820621   0.000000
     6  O    4.286151   2.334781   2.462924   2.062092   2.409985
     7  H    4.447763   2.571999   2.329961   2.320423   2.948533
                    6          7
     6  O    0.000000
     7  H    0.973485   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.631388   -0.009616   -0.042548
      2          6           0        0.327837    0.029221    0.127916
      3          1           0        0.527388   -0.852799    0.736440
      4          1           0        0.755993   -0.004004   -0.869976
      5          1           0        0.524445    0.960629    0.656632
      6          8           0        2.653411    0.094821   -0.068565
      7          1           0        2.731459   -0.874251   -0.018761
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    109.1603032      2.3271178      2.3219722
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.3908270365 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.97D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=     0.000000    0.000000    0.000000
         Rot=    0.993615   -0.112822    0.000855   -0.000059 Ang= -12.96 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411442.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487374806     A.U. after   12 cycles
            NFock= 12  Conv=0.87D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2037990855D-01 E2=     -0.6140053782D-01
     alpha-beta  T2 =       0.1198609119D+00 E2=     -0.3687667285D+00
     beta-beta   T2 =       0.2037990855D-01 E2=     -0.6140053782D-01
 ANorm=    0.1077321089D+01
 E2 =    -0.4915678042D+00 EUMP2 =    -0.57497894261031D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353780.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.29D-03 Max=1.27D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.93D-03 Max=1.76D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.35D-04 Max=7.31D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.19D-04 Max=2.14D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=7.36D-05 Max=7.78D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.83D-05 Max=1.77D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.73D-06 Max=3.96D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.05D-06 Max=9.30D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.58D-07 Max=2.19D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.83D-08 Max=6.49D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.23D-08 Max=1.28D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.89D-09 Max=1.21D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.19D-10 Max=2.92D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.40D-11 Max=5.07D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.002040358    0.000118751    0.000240425
      2        6           0.001630287   -0.000064191    0.000616962
      3        1           0.000739588   -0.000033638   -0.000839701
      4        1           0.000031089    0.000145058    0.000058889
      5        1          -0.000140819   -0.000052718   -0.000842991
      6        8          -0.000445835   -0.000013185    0.001123659
      7        1           0.000226049   -0.000100076   -0.000357243
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.002040358 RMS     0.000721764

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.002017247 RMS     0.000474131
 Search for a saddle point.
 Step number  11 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    6    8    9   10
                                                     11
 ITU=  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00356   0.00126   0.00518   0.00769   0.01407
     Eigenvalues ---    0.01896   0.05489   0.05554   0.09126   0.09222
     Eigenvalues ---    0.10377   0.32049   0.35230   0.35666   0.50317
 Eigenvectors required to have negative eigenvalues:
                          R5        R8        R6        D1        R1
   1                    0.46385   0.44599   0.37050  -0.31951  -0.27696
                          R7        D7        D6        A2        D4
   1                   -0.21689   0.20909   0.16715   0.15478   0.14194
 RFO step:  Lambda0=3.006407753D-04 Lambda=-1.17791399D-04.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.03707075 RMS(Int)=  0.00141300
 Iteration  2 RMS(Cart)=  0.00080851 RMS(Int)=  0.00100857
 Iteration  3 RMS(Cart)=  0.00000063 RMS(Int)=  0.00100857
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.71711   0.00202   0.00000  -0.07134  -0.07134   3.64577
    R2        2.05979  -0.00028   0.00000   0.00095   0.00104   2.06082
    R3        2.05295  -0.00003   0.00000   0.00675   0.00788   2.06084
    R4        2.05773  -0.00011   0.00000   0.00492   0.00467   2.06240
    R5        4.41210   0.00008   0.00000   0.15907   0.15839   4.57049
    R6        4.65425  -0.00082   0.00000   0.05961   0.05996   4.71421
    R7        3.89679   0.00040   0.00000  -0.03026  -0.02991   3.86688
    R8        4.55421  -0.00005   0.00000   0.18768   0.18729   4.74150
    R9        1.83962  -0.00005   0.00000   0.00103   0.00103   1.84065
    A1        1.78724   0.00003   0.00000   0.03635   0.03597   1.82320
    A2        1.88846   0.00055   0.00000   0.05072   0.05073   1.93919
    A3        1.81193  -0.00041   0.00000   0.01963   0.01950   1.83143
    A4        1.99974  -0.00019   0.00000  -0.03882  -0.04266   1.95708
    A5        1.96929   0.00043   0.00000  -0.01705  -0.01737   1.95192
    A6        1.98341  -0.00036   0.00000  -0.03065  -0.03063   1.95278
    A7        1.61840   0.00014   0.00000  -0.02034  -0.02046   1.59794
    A8        0.81525  -0.00002   0.00000  -0.01695  -0.01836   0.79688
    A9        0.76312   0.00012   0.00000  -0.02420  -0.02412   0.73900
   A10        1.23394   0.00013   0.00000  -0.01140  -0.01107   1.22287
   A11        0.82483  -0.00016   0.00000  -0.03215  -0.03313   0.79170
   A12        1.61676   0.00011   0.00000  -0.01016  -0.01032   1.60644
   A13        1.99661   0.00025   0.00000  -0.03527  -0.03493   1.96168
   A14        3.24516  -0.00038   0.00000  -0.00672  -0.00639   3.23877
   A15        3.00330   0.00061   0.00000  -0.04392  -0.04404   2.95926
    D1        2.31435  -0.00022   0.00000  -0.10342  -0.10209   2.21226
    D2        0.57093   0.00001   0.00000  -0.01986  -0.02175   0.54918
    D3       -0.62727   0.00031   0.00000   0.00316   0.00213  -0.62514
    D4        2.54973   0.00005   0.00000  -0.00916  -0.01009   2.53964
    D5        0.53258   0.00025   0.00000   0.00053   0.00223   0.53481
    D6       -1.58567  -0.00007   0.00000   0.02471   0.02540  -1.56027
    D7        0.65418  -0.00053   0.00000  -0.00387  -0.00331   0.65088
         Item               Value     Threshold  Converged?
 Maximum Force            0.002017     0.000015     NO 
 RMS     Force            0.000474     0.000010     NO 
 Maximum Displacement     0.081766     0.000060     NO 
 RMS     Displacement     0.037278     0.000040     NO 
 Predicted change in Energy= 1.020791D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.601611   -0.151623   -0.055419
      2          6           0        0.317085    0.034124    0.022910
      3          1           0        0.604961   -0.494315    0.932393
      4          1           0        0.789121   -0.388489   -0.864713
      5          1           0        0.492560    1.108195    0.104668
      6          8           0        2.714060    0.013922   -0.299143
      7          1           0        2.795117   -0.841642    0.159310
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.929257   0.000000
     3  H    2.441756   1.090541   0.000000
     4  H    2.535086   1.090547   1.809614   0.000000
     5  H    2.449147   1.091377   1.807152   1.807680   0.000000
     6  O    4.325716   2.418597   2.494651   2.046263   2.509095
     7  H    4.455721   2.631770   2.348420   2.297388   3.017717
                    6          7
     6  O    0.000000
     7  H    0.974033   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.632947   -0.021812   -0.049852
      2          6           0        0.284289    0.066214    0.146340
      3          1           0        0.524432   -0.740542    0.839705
      4          1           0        0.783525   -0.056390   -0.815442
      5          1           0        0.477568    1.047648    0.582842
      6          8           0        2.691497    0.075956   -0.087898
      7          1           0        2.736871   -0.884848    0.065516
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    106.0178978      2.2928128      2.2886752
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.2889596118 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.91D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000    0.000000    0.000000
         Rot=    0.998540    0.053999    0.000998   -0.000317 Ang=   6.19 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411498.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487439080     A.U. after   12 cycles
            NFock= 12  Conv=0.56D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2034007651D-01 E2=     -0.6139044212D-01
     alpha-beta  T2 =       0.1195256371D+00 E2=     -0.3687372077D+00
     beta-beta   T2 =       0.2034007651D-01 E2=     -0.6139044212D-01
 ANorm=    0.1077128493D+01
 E2 =    -0.4915180919D+00 EUMP2 =    -0.57497895717218D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353704.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=7.90D-03 Max=1.13D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.77D-03 Max=1.78D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=5.76D-04 Max=6.47D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=1.91D-04 Max=2.21D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.48D-05 Max=6.42D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.65D-05 Max=1.50D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.10D-06 Max=3.71D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=9.21D-07 Max=8.10D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.17D-07 Max=1.39D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.99D-08 Max=5.32D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=8.69D-09 Max=9.03D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.55D-09 Max=1.65D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.92D-10 Max=2.73D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.19D-11 Max=4.97D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000667355    0.000121513    0.000020948
      2        6          -0.001453325   -0.000115321    0.000351698
      3        1          -0.000000420    0.000152408    0.000182004
      4        1           0.001185151    0.000331732    0.000246613
      5        1           0.000203475   -0.000393182   -0.000409964
      6        8          -0.000547383    0.000055974    0.000076581
      7        1          -0.000054854   -0.000153124   -0.000467880
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.001453325 RMS     0.000500455

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000875813 RMS     0.000261864
 Search for a saddle point.
 Step number  12 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    6    8    9   11
                                                     12
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00717   0.00042   0.00562   0.00674   0.01395
     Eigenvalues ---    0.01947   0.05461   0.05523   0.09121   0.09219
     Eigenvalues ---    0.10403   0.31903   0.34960   0.35623   0.50317
 Eigenvectors required to have negative eigenvalues:
                          R8        R7        R6        R5        D1
   1                    0.41854  -0.40822   0.40227   0.40079  -0.31765
                          R1        A2        A15       A4        A6
   1                   -0.27868   0.17777  -0.17080  -0.12117  -0.11221
 RFO step:  Lambda0=1.001581655D-04 Lambda=-2.66314292D-04.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.05667369 RMS(Int)=  0.02722811
 Iteration  2 RMS(Cart)=  0.02014985 RMS(Int)=  0.00457010
 Iteration  3 RMS(Cart)=  0.00068620 RMS(Int)=  0.00448368
 Iteration  4 RMS(Cart)=  0.00000144 RMS(Int)=  0.00448368
 Iteration  5 RMS(Cart)=  0.00000001 RMS(Int)=  0.00448368
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.64577  -0.00068   0.00000   0.02188   0.02188   3.66765
    R2        2.06082   0.00000   0.00000  -0.00513  -0.00265   2.05817
    R3        2.06084   0.00013   0.00000  -0.00215  -0.00240   2.05844
    R4        2.06240  -0.00032   0.00000  -0.00251   0.00091   2.06331
    R5        4.57049   0.00008   0.00000  -0.05623  -0.05765   4.51284
    R6        4.71421   0.00024   0.00000  -0.12786  -0.12849   4.58572
    R7        3.86688  -0.00088   0.00000   0.01584   0.01623   3.88310
    R8        4.74150  -0.00010   0.00000   0.02995   0.02914   4.77064
    R9        1.84065  -0.00009   0.00000  -0.00071  -0.00071   1.83994
    A1        1.82320   0.00010   0.00000  -0.00059  -0.00055   1.82266
    A2        1.93919   0.00030   0.00000  -0.01900  -0.01888   1.92031
    A3        1.83143   0.00002   0.00000  -0.01716  -0.01709   1.81435
    A4        1.95708   0.00002   0.00000   0.01729   0.01706   1.97414
    A5        1.95192  -0.00000   0.00000   0.01011   0.01110   1.96302
    A6        1.95278  -0.00039   0.00000   0.00579   0.00426   1.95703
    A7        1.59794   0.00002   0.00000  -0.05011  -0.04949   1.54844
    A8        0.79688   0.00004   0.00000   0.02267   0.02266   0.81954
    A9        0.73900  -0.00007   0.00000   0.00899   0.00986   0.74886
   A10        1.22287   0.00012   0.00000   0.01372   0.03030   1.25316
   A11        0.79170  -0.00011   0.00000  -0.00456  -0.00421   0.78749
   A12        1.60644  -0.00003   0.00000  -0.15584  -0.15637   1.45007
   A13        1.96168   0.00006   0.00000   0.02778   0.01037   1.97205
   A14        3.23877   0.00019   0.00000  -0.03892  -0.03886   3.19991
   A15        2.95926  -0.00007   0.00000  -0.01037  -0.01041   2.94885
    D1        2.21226  -0.00029   0.00000   0.03594   0.03591   2.24817
    D2        0.54918  -0.00012   0.00000  -0.01909  -0.01858   0.53060
    D3       -0.62514   0.00004   0.00000   0.01129   0.01110  -0.61404
    D4        2.53964  -0.00035   0.00000  -0.30854  -0.30426   2.23538
    D5        0.53481   0.00006   0.00000   0.01928   0.01860   0.55340
    D6       -1.56027  -0.00011   0.00000  -0.19941  -0.19952  -1.75979
    D7        0.65088  -0.00036   0.00000  -0.32145  -0.32196   0.32891
         Item               Value     Threshold  Converged?
 Maximum Force            0.000876     0.000015     NO 
 RMS     Force            0.000262     0.000010     NO 
 Maximum Displacement     0.206937     0.000060     NO 
 RMS     Displacement     0.073312     0.000040     NO 
 Predicted change in Energy=-1.212222D-04
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.580318   -0.205021   -0.058640
      2          6           0        0.341813    0.048976    0.029335
      3          1           0        0.637596   -0.437086    0.958030
      4          1           0        0.816031   -0.384812   -0.850136
      5          1           0        0.462562    1.133410    0.068987
      6          8           0        2.719068    0.033227   -0.197374
      7          1           0        2.714541   -0.908522    0.049804
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.940835   0.000000
     3  H    2.450840   1.089137   0.000000
     4  H    2.530075   1.089277   1.817701   0.000000
     5  H    2.445617   1.091856   1.813145   1.809621   0.000000
     6  O    4.308216   2.388093   2.426660   2.054849   2.524514
     7  H    4.353445   2.558722   2.315346   2.165295   3.039945
                    6          7
     6  O    0.000000
     7  H    0.973657   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.627526   -0.043890   -0.034857
      2          6           0        0.300106    0.135593    0.102473
      3          1           0        0.556790   -0.389418    1.021547
      4          1           0        0.778003   -0.288336   -0.779810
      5          1           0        0.459446    1.213055    0.178874
      6          8           0        2.679733    0.038370   -0.073345
      7          1           0        2.635209   -0.909702    0.143876
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    105.2077886      2.3166726      2.3072399
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4538927319 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000   -0.000000   -0.000000
         Rot=    0.988565    0.150791   -0.000296    0.000471 Ang=  17.35 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411567.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.486961650     A.U. after   13 cycles
            NFock= 13  Conv=0.49D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2040860998D-01 E2=     -0.6148400137D-01
     alpha-beta  T2 =       0.1197969748D+00 E2=     -0.3690132113D+00
     beta-beta   T2 =       0.2040860998D-01 E2=     -0.6148400137D-01
 ANorm=    0.1077318056D+01
 E2 =    -0.4919812140D+00 EUMP2 =    -0.57497894286424D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353856.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.13D-03 Max=1.19D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.85D-03 Max=1.84D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.05D-04 Max=7.07D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.06D-04 Max=2.30D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.93D-05 Max=6.99D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.75D-05 Max=1.62D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.46D-06 Max=3.84D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.02D-06 Max=8.99D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.57D-07 Max=2.38D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.99D-08 Max=6.49D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.21D-08 Max=1.13D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.85D-09 Max=1.32D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.40D-10 Max=3.07D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.88D-11 Max=5.71D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000346008    0.000034758    0.000020373
      2        6          -0.000753461   -0.000339326   -0.000081832
      3        1           0.000253720    0.000334292   -0.000179590
      4        1           0.000158152    0.000645188    0.000169152
      5        1           0.000619139   -0.000646377   -0.000033929
      6        8          -0.000329711   -0.000209539   -0.000111564
      7        1           0.000398169    0.000181003    0.000217389
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000753461 RMS     0.000358241

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000436009 RMS     0.000227634
 Search for a saddle point.
 Step number  13 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    9   10   11
                                                     12   13
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00705   0.00110   0.00545   0.00759   0.01388
     Eigenvalues ---    0.01951   0.05492   0.05558   0.09118   0.09217
     Eigenvalues ---    0.10462   0.32091   0.35209   0.35682   0.50318
 Eigenvectors required to have negative eigenvalues:
                          R5        R8        D1        R6        R1
   1                    0.46192   0.44470  -0.36173   0.33386  -0.31335
                          R7        A2        A15       A4        A6
   1                   -0.29168   0.18128  -0.15739  -0.13543  -0.11371
 RFO step:  Lambda0=2.950679531D-06 Lambda=-1.23430337D-04.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.03782872 RMS(Int)=  0.00278378
 Iteration  2 RMS(Cart)=  0.00201949 RMS(Int)=  0.00101323
 Iteration  3 RMS(Cart)=  0.00000319 RMS(Int)=  0.00101322
 Iteration  4 RMS(Cart)=  0.00000000 RMS(Int)=  0.00101322
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.66765   0.00034   0.00000   0.00730   0.00730   3.67495
    R2        2.05817  -0.00018   0.00000  -0.00023   0.00028   2.05845
    R3        2.05844  -0.00020   0.00000  -0.00039  -0.00034   2.05809
    R4        2.06331  -0.00044   0.00000  -0.00436  -0.00363   2.05968
    R5        4.51284   0.00034   0.00000  -0.00734  -0.00764   4.50520
    R6        4.58572  -0.00005   0.00000   0.05027   0.05001   4.63573
    R7        3.88310   0.00003   0.00000  -0.01449  -0.01430   3.86880
    R8        4.77064  -0.00037   0.00000  -0.07119  -0.07136   4.69928
    R9        1.83994  -0.00012   0.00000  -0.00008  -0.00008   1.83987
    A1        1.82266   0.00019   0.00000  -0.00428  -0.00432   1.81834
    A2        1.92031   0.00028   0.00000   0.00427   0.00432   1.92463
    A3        1.81435   0.00012   0.00000   0.00652   0.00642   1.82077
    A4        1.97414   0.00011   0.00000   0.00037   0.00025   1.97439
    A5        1.96302  -0.00024   0.00000  -0.00358  -0.00252   1.96050
    A6        1.95703  -0.00039   0.00000  -0.00253  -0.00337   1.95366
    A7        1.54844   0.00017   0.00000   0.04445   0.04450   1.59294
    A8        0.81954  -0.00005   0.00000  -0.00666  -0.00666   0.81288
    A9        0.74886  -0.00014   0.00000   0.00124   0.00137   0.75023
   A10        1.25316   0.00020   0.00000  -0.00067   0.00265   1.25581
   A11        0.78749  -0.00020   0.00000   0.00980   0.00972   0.79722
   A12        1.45007   0.00034   0.00000   0.08658   0.08678   1.53685
   A13        1.97205   0.00008   0.00000   0.03054   0.02656   1.99862
   A14        3.19991   0.00004   0.00000   0.02435   0.02436   3.22427
   A15        2.94885   0.00017   0.00000   0.01848   0.01835   2.96720
    D1        2.24817  -0.00039   0.00000  -0.00473  -0.00466   2.24351
    D2        0.53060  -0.00024   0.00000   0.01362   0.01369   0.54429
    D3       -0.61404  -0.00004   0.00000  -0.00609  -0.00586  -0.61990
    D4        2.23538   0.00007   0.00000   0.14224   0.14196   2.37733
    D5        0.55340   0.00010   0.00000  -0.00834  -0.00820   0.54520
    D6       -1.75979   0.00024   0.00000   0.07462   0.07380  -1.68600
    D7        0.32891   0.00017   0.00000   0.14491   0.14597   0.47489
         Item               Value     Threshold  Converged?
 Maximum Force            0.000436     0.000015     NO 
 RMS     Force            0.000228     0.000010     NO 
 Maximum Displacement     0.093182     0.000060     NO 
 RMS     Displacement     0.038187     0.000040     NO 
 Predicted change in Energy=-6.434033D-05
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.596690   -0.170670   -0.056677
      2          6           0        0.335003    0.037815    0.026671
      3          1           0        0.618563   -0.468443    0.948540
      4          1           0        0.799694   -0.393819   -0.858700
      5          1           0        0.487722    1.115565    0.082275
      6          8           0        2.703950    0.035001   -0.241216
      7          1           0        2.763052   -0.875278    0.099113
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.944697   0.000000
     3  H    2.450811   1.089287   0.000000
     4  H    2.536866   1.089095   1.817826   0.000000
     5  H    2.453259   1.089936   1.810142   1.805824   0.000000
     6  O    4.309508   2.384048   2.453124   2.047282   2.486752
     7  H    4.419060   2.595074   2.342194   2.236958   3.023387
                    6          7
     6  O    0.000000
     7  H    0.973615   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.631432   -0.031459   -0.041978
      2          6           0        0.301969    0.095537    0.124399
      3          1           0        0.542867   -0.569823    0.952535
      4          1           0        0.780944   -0.193750   -0.809957
      5          1           0        0.483451    1.142296    0.367956
      6          8           0        2.676935    0.059925   -0.080415
      7          1           0        2.699796   -0.896551    0.100022
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    106.9020817      2.3096047      2.3031956
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.3539390337 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.94D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000    0.000000   -0.000000
         Rot=    0.997436   -0.071564   -0.000034   -0.000186 Ang=  -8.21 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411497.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487272306     A.U. after   12 cycles
            NFock= 12  Conv=0.40D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038187325D-01 E2=     -0.6143500719D-01
     alpha-beta  T2 =       0.1197279082D+00 E2=     -0.3688518038D+00
     beta-beta   T2 =       0.2038187325D-01 E2=     -0.6143500719D-01
 ANorm=    0.1077261182D+01
 E2 =    -0.4917218182D+00 EUMP2 =    -0.57497899412468D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353837.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.11D-03 Max=1.17D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.84D-03 Max=1.82D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.02D-04 Max=6.90D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.04D-04 Max=2.25D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.87D-05 Max=6.90D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.74D-05 Max=1.65D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.41D-06 Max=3.71D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=9.95D-07 Max=8.76D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.41D-07 Max=1.84D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.31D-08 Max=5.70D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.15D-08 Max=1.27D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.81D-09 Max=1.18D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.28D-10 Max=2.89D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.72D-11 Max=5.10D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000420699    0.000098823    0.000087887
      2        6          -0.000674075   -0.000631050   -0.000242685
      3        1           0.000084142   -0.000014832    0.000109666
      4        1           0.000224449    0.000036655    0.000010711
      5        1           0.000063108    0.000524187    0.000035268
      6        8          -0.000091815    0.000054645   -0.000005639
      7        1          -0.000026509   -0.000068427    0.000004791
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000674075 RMS     0.000264934

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000446021 RMS     0.000127742
 Search for a saddle point.
 Step number  14 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    8    9   10
                                                     11   12   13   14
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00657   0.00133   0.00573   0.00789   0.01399
     Eigenvalues ---    0.01985   0.05484   0.05561   0.09121   0.09216
     Eigenvalues ---    0.10557   0.32079   0.35181   0.35679   0.50318
 Eigenvectors required to have negative eigenvalues:
                          R5        R8        R6        R7        D1
   1                    0.43215   0.42125   0.37075  -0.35516  -0.34534
                          R1        A2        A15       A4        A6
   1                   -0.29835   0.18466  -0.15865  -0.12853  -0.11446
 RFO step:  Lambda0=5.897399849D-06 Lambda=-5.78988102D-06.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.00584408 RMS(Int)=  0.00005939
 Iteration  2 RMS(Cart)=  0.00003923 RMS(Int)=  0.00001849
 Iteration  3 RMS(Cart)=  0.00000000 RMS(Int)=  0.00001849
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.67495  -0.00043   0.00000   0.00249   0.00249   3.67744
    R2        2.05845   0.00010   0.00000  -0.00026  -0.00025   2.05821
    R3        2.05809   0.00005   0.00000  -0.00058  -0.00057   2.05752
    R4        2.05968   0.00045   0.00000   0.00112   0.00113   2.06081
    R5        4.50520  -0.00002   0.00000  -0.01167  -0.01168   4.49351
    R6        4.63573  -0.00002   0.00000  -0.02370  -0.02371   4.61202
    R7        3.86880  -0.00010   0.00000   0.01144   0.01144   3.88024
    R8        4.69928   0.00005   0.00000  -0.00833  -0.00833   4.69095
    R9        1.83987   0.00006   0.00000   0.00002   0.00002   1.83989
    A1        1.81834  -0.00002   0.00000  -0.00020  -0.00020   1.81814
    A2        1.92463   0.00016   0.00000  -0.00301  -0.00301   1.92161
    A3        1.82077  -0.00005   0.00000  -0.00220  -0.00219   1.81857
    A4        1.97439  -0.00001   0.00000   0.00248   0.00249   1.97689
    A5        1.96050  -0.00004   0.00000   0.00072   0.00071   1.96121
    A6        1.95366  -0.00004   0.00000   0.00150   0.00148   1.95514
    A7        1.59294  -0.00003   0.00000  -0.00241  -0.00241   1.59053
    A8        0.81288   0.00004   0.00000   0.00356   0.00353   0.81640
    A9        0.75023   0.00009   0.00000   0.00300   0.00301   0.75324
   A10        1.25581  -0.00004   0.00000   0.00113   0.00119   1.25700
   A11        0.79722   0.00009   0.00000   0.00133   0.00132   0.79853
   A12        1.53685  -0.00003   0.00000  -0.00842  -0.00844   1.52841
   A13        1.99862   0.00006   0.00000   0.00222   0.00216   2.00078
   A14        3.22427  -0.00004   0.00000  -0.00685  -0.00685   3.21742
   A15        2.96720   0.00012   0.00000   0.00455   0.00455   2.97175
    D1        2.24351  -0.00007   0.00000   0.00527   0.00528   2.24879
    D2        0.54429  -0.00002   0.00000  -0.00112  -0.00112   0.54318
    D3       -0.61990  -0.00008   0.00000   0.00119   0.00119  -0.61871
    D4        2.37733  -0.00005   0.00000  -0.01704  -0.01702   2.36031
    D5        0.54520   0.00007   0.00000   0.00231   0.00230   0.54750
    D6       -1.68600   0.00001   0.00000  -0.01084  -0.01085  -1.69685
    D7        0.47489   0.00001   0.00000  -0.01946  -0.01946   0.45543
         Item               Value     Threshold  Converged?
 Maximum Force            0.000446     0.000015     NO 
 RMS     Force            0.000128     0.000010     NO 
 Maximum Displacement     0.020317     0.000060     NO 
 RMS     Displacement     0.005834     0.000040     NO 
 Predicted change in Energy= 5.615200D-08
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.595110   -0.172275   -0.052535
      2          6           0        0.338009    0.037653    0.024699
      3          1           0        0.624468   -0.467305    0.946231
      4          1           0        0.797070   -0.394358   -0.863054
      5          1           0        0.487931    1.116480    0.078724
      6          8           0        2.702144    0.037733   -0.230465
      7          1           0        2.756779   -0.877755    0.096406
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.946017   0.000000
     3  H    2.451755   1.089157   0.000000
     4  H    2.535505   1.088795   1.818962   0.000000
     5  H    2.452994   1.090534   1.810963   1.806971   0.000000
     6  O    4.306060   2.377865   2.440577   2.053334   2.482344
     7  H    4.411216   2.587192   2.331828   2.234882   3.020755
                    6          7
     6  O    0.000000
     7  H    0.973627   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.630765   -0.031970   -0.039777
      2          6           0        0.304564    0.097187    0.117717
      3          1           0        0.548801   -0.560558    0.950773
      4          1           0        0.776719   -0.199646   -0.817396
      5          1           0        0.484412    1.147109    0.351344
      6          8           0        2.674177    0.059033   -0.076505
      7          1           0        2.692274   -0.898797    0.097227
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    107.5480685      2.3135197      2.3065901
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.3905955177 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.94D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000   -0.000000    0.000000
         Rot=    0.999992    0.003876   -0.000104    0.000045 Ang=   0.44 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Petite list used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411511.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487235331     A.U. after   11 cycles
            NFock= 11  Conv=0.34D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038627520D-01 E2=     -0.6144120692D-01
     alpha-beta  T2 =       0.1197529250D+00 E2=     -0.3688767317D+00
     beta-beta   T2 =       0.2038627520D-01 E2=     -0.6144120692D-01
 ANorm=    0.1077276880D+01
 E2 =    -0.4917591455D+00 EUMP2 =    -0.57497899447679D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353818.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.13D-03 Max=1.19D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.85D-03 Max=1.81D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.05D-04 Max=6.98D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.06D-04 Max=2.24D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.92D-05 Max=7.00D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.75D-05 Max=1.66D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.44D-06 Max=3.73D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.01D-06 Max=8.84D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.47D-07 Max=2.06D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.55D-08 Max=6.12D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.18D-08 Max=1.24D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.83D-09 Max=1.23D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.28D-10 Max=2.97D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.69D-11 Max=5.36D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000041341    0.000009239    0.000013778
      2        6          -0.000107607   -0.000048362   -0.000074039
      3        1           0.000029313    0.000004526    0.000014237
      4        1           0.000011347   -0.000007286    0.000019894
      5        1           0.000050237    0.000026852    0.000010157
      6        8          -0.000031696    0.000020686    0.000030619
      7        1           0.000007066   -0.000005655   -0.000014648
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000107607 RMS     0.000037199

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000042610 RMS     0.000015838
 Search for a saddle point.
 Step number  15 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    8    9   10
                                                     11   12   13   14   15
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00619   0.00114   0.00591   0.00770   0.01345
     Eigenvalues ---    0.01931   0.05477   0.05569   0.09097   0.09210
     Eigenvalues ---    0.10684   0.32162   0.35230   0.35684   0.50318
 Eigenvectors required to have negative eigenvalues:
                          R8        R5        R6        R7        D1
   1                    0.44607   0.42625   0.36732  -0.36290  -0.33138
                          R1        A2        A15       A4        A6
   1                   -0.28330   0.17950  -0.16766  -0.12383  -0.11181
 RFO step:  Lambda0=4.158047700D-10 Lambda=-5.28422385D-07.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.00172608 RMS(Int)=  0.00000864
 Iteration  2 RMS(Cart)=  0.00000607 RMS(Int)=  0.00000341
 Iteration  3 RMS(Cart)=  0.00000000 RMS(Int)=  0.00000341
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.67744  -0.00004   0.00000  -0.00236  -0.00236   3.67508
    R2        2.05821   0.00002   0.00000   0.00008   0.00008   2.05829
    R3        2.05752  -0.00001   0.00000  -0.00002  -0.00002   2.05751
    R4        2.06081   0.00004   0.00000   0.00010   0.00011   2.06092
    R5        4.49351   0.00000   0.00000   0.00320   0.00320   4.49671
    R6        4.61202  -0.00001   0.00000  -0.00222  -0.00222   4.60980
    R7        3.88024   0.00001   0.00000   0.00426   0.00426   3.88450
    R8        4.69095  -0.00003   0.00000   0.00024   0.00024   4.69119
    R9        1.83989   0.00000   0.00000   0.00002   0.00002   1.83991
    A1        1.81814  -0.00000   0.00000   0.00142   0.00142   1.81956
    A2        1.92161   0.00002   0.00000   0.00061   0.00061   1.92223
    A3        1.81857   0.00001   0.00000   0.00120   0.00120   1.81977
    A4        1.97689  -0.00001   0.00000  -0.00091  -0.00091   1.97598
    A5        1.96121  -0.00002   0.00000  -0.00112  -0.00112   1.96009
    A6        1.95514  -0.00000   0.00000  -0.00079  -0.00079   1.95435
    A7        1.59053   0.00000   0.00000   0.00045   0.00045   1.59098
    A8        0.81640   0.00000   0.00000  -0.00016  -0.00016   0.81624
    A9        0.75324   0.00001   0.00000  -0.00010  -0.00010   0.75313
   A10        1.25700   0.00000   0.00000   0.00274   0.00275   1.25975
   A11        0.79853   0.00001   0.00000  -0.00045  -0.00045   0.79808
   A12        1.52841  -0.00000   0.00000  -0.00272  -0.00272   1.52569
   A13        2.00078   0.00001   0.00000   0.00176   0.00175   2.00253
   A14        3.21742  -0.00001   0.00000  -0.00117  -0.00117   3.21625
   A15        2.97175   0.00002   0.00000   0.00073   0.00073   2.97248
    D1        2.24879  -0.00003   0.00000  -0.00287  -0.00287   2.24592
    D2        0.54318  -0.00000   0.00000  -0.00056  -0.00056   0.54262
    D3       -0.61871  -0.00001   0.00000  -0.00003  -0.00003  -0.61874
    D4        2.36031  -0.00001   0.00000  -0.00739  -0.00738   2.35293
    D5        0.54750   0.00000   0.00000   0.00027   0.00027   0.54777
    D6       -1.69685  -0.00001   0.00000  -0.00646  -0.00646  -1.70331
    D7        0.45543   0.00000   0.00000  -0.00780  -0.00780   0.44763
         Item               Value     Threshold  Converged?
 Maximum Force            0.000043     0.000015     NO 
 RMS     Force            0.000016     0.000010     NO 
 Maximum Displacement     0.005875     0.000060     NO 
 RMS     Displacement     0.001726     0.000040     NO 
 Predicted change in Energy=-2.640595D-07
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.595000   -0.172668   -0.052461
      2          6           0        0.336819    0.037721    0.024588
      3          1           0        0.624878   -0.465981    0.946356
      4          1           0        0.796616   -0.394731   -0.862558
      5          1           0        0.487747    1.116505    0.077825
      6          8           0        2.703002    0.038469   -0.227356
      7          1           0        2.757231   -0.879142    0.093612
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.944768   0.000000
     3  H    2.451841   1.089198   0.000000
     4  H    2.534836   1.088787   1.818445   0.000000
     5  H    2.452911   1.090590   1.810363   1.806531   0.000000
     6  O    4.306737   2.379558   2.439400   2.055590   2.482470
     7  H    4.411616   2.589169   2.333411   2.234486   3.022154
                    6          7
     6  O    0.000000
     7  H    0.973638   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.630726   -0.032311   -0.039303
      2          6           0        0.303422    0.098145    0.116176
      3          1           0        0.549667   -0.553189    0.953720
      4          1           0        0.775740   -0.205217   -0.816746
      5          1           0        0.484542    1.149551    0.342289
      6          8           0        2.674898    0.058571   -0.075754
      7          1           0        2.692684   -0.899297    0.097861
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    107.6913004      2.3130781      2.3060286
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.3962534740 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.94D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=     0.000000    0.000000    0.000000
         Rot=    0.999995    0.003052   -0.000004   -0.000008 Ang=   0.35 deg.
 Keep R1 ints in memory in canonical form, NReq=3411511.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487247693     A.U. after    9 cycles
            NFock=  9  Conv=0.99D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038349355D-01 E2=     -0.6143908083D-01
     alpha-beta  T2 =       0.1197349234D+00 E2=     -0.3688688079D+00
     beta-beta   T2 =       0.2038349355D-01 E2=     -0.6143908083D-01
 ANorm=    0.1077265942D+01
 E2 =    -0.4917469695D+00 EUMP2 =    -0.57497899466226D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353837.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.11D-03 Max=1.19D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.85D-03 Max=1.80D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.04D-04 Max=6.95D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.05D-04 Max=2.24D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.89D-05 Max=6.96D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.74D-05 Max=1.65D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.41D-06 Max=3.70D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.00D-06 Max=8.79D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.45D-07 Max=2.05D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.51D-08 Max=6.08D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.17D-08 Max=1.24D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.82D-09 Max=1.21D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.27D-10 Max=2.94D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.66D-11 Max=5.36D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000042373    0.000010668    0.000000347
      2        6          -0.000019099   -0.000038878    0.000042993
      3        1          -0.000003660   -0.000006952   -0.000009497
      4        1           0.000014512    0.000005912   -0.000018649
      5        1          -0.000001689    0.000025325   -0.000014915
      6        8          -0.000023447    0.000006899   -0.000010908
      7        1          -0.000008990   -0.000002973    0.000010628
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000042993 RMS     0.000019718

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000043259 RMS     0.000011539
 Search for a saddle point.
 Step number  16 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    8    9   10
                                                     11   12   13   14   15
                                                     16
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00632   0.00138   0.00625   0.00773   0.01318
     Eigenvalues ---    0.01877   0.05471   0.05569   0.09082   0.09207
     Eigenvalues ---    0.10779   0.32211   0.35241   0.35686   0.50318
 Eigenvectors required to have negative eigenvalues:
                          R8        R5        R6        R7        D1
   1                    0.43835   0.43416   0.36916  -0.35369  -0.33949
                          R1        A2        A15       A4        A6
   1                   -0.28400   0.18281  -0.16317  -0.12713  -0.11235
 RFO step:  Lambda0=1.095204823D-09 Lambda=-8.11478494D-08.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.00050566 RMS(Int)=  0.00000054
 Iteration  2 RMS(Cart)=  0.00000037 RMS(Int)=  0.00000021
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.67508  -0.00004   0.00000   0.00013   0.00013   3.67521
    R2        2.05829  -0.00001   0.00000  -0.00002  -0.00002   2.05827
    R3        2.05751   0.00002   0.00000   0.00004   0.00004   2.05755
    R4        2.06092   0.00002   0.00000   0.00005   0.00005   2.06096
    R5        4.49671  -0.00001   0.00000  -0.00120  -0.00120   4.49551
    R6        4.60980  -0.00000   0.00000  -0.00019  -0.00019   4.60961
    R7        3.88450  -0.00001   0.00000  -0.00136  -0.00136   3.88315
    R8        4.69119  -0.00000   0.00000  -0.00086  -0.00086   4.69033
    R9        1.83991   0.00001   0.00000   0.00000   0.00000   1.83991
    A1        1.81956   0.00000   0.00000  -0.00020  -0.00020   1.81936
    A2        1.92223   0.00000   0.00000   0.00000   0.00000   1.92223
    A3        1.81977  -0.00001   0.00000  -0.00024  -0.00024   1.81953
    A4        1.97598   0.00000   0.00000   0.00012   0.00012   1.97610
    A5        1.96009   0.00001   0.00000   0.00030   0.00030   1.96039
    A6        1.95435  -0.00001   0.00000  -0.00003  -0.00003   1.95432
    A7        1.59098  -0.00001   0.00000  -0.00020  -0.00020   1.59078
    A8        0.81624   0.00000   0.00000   0.00015   0.00015   0.81639
    A9        0.75313   0.00001   0.00000   0.00018   0.00018   0.75331
   A10        1.25975  -0.00001   0.00000  -0.00085  -0.00085   1.25890
   A11        0.79808   0.00001   0.00000   0.00020   0.00020   0.79828
   A12        1.52569  -0.00000   0.00000   0.00064   0.00064   1.52633
   A13        2.00253  -0.00000   0.00000  -0.00044  -0.00044   2.00209
   A14        3.21625   0.00001   0.00000   0.00025   0.00025   3.21650
   A15        2.97248   0.00001   0.00000   0.00002   0.00002   2.97249
    D1        2.24592   0.00001   0.00000   0.00040   0.00040   2.24632
    D2        0.54262   0.00000   0.00000   0.00015   0.00015   0.54277
    D3       -0.61874   0.00000   0.00000   0.00004   0.00004  -0.61870
    D4        2.35293   0.00001   0.00000   0.00191   0.00191   2.35484
    D5        0.54777   0.00001   0.00000   0.00003   0.00003   0.54780
    D6       -1.70331   0.00001   0.00000   0.00176   0.00176  -1.70155
    D7        0.44763  -0.00000   0.00000   0.00193   0.00193   0.44956
         Item               Value     Threshold  Converged?
 Maximum Force            0.000043     0.000015     NO 
 RMS     Force            0.000012     0.000010     NO 
 Maximum Displacement     0.001558     0.000060     NO 
 RMS     Displacement     0.000506     0.000040     NO 
 Predicted change in Energy=-4.002631D-08
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.594837   -0.172474   -0.052350
      2          6           0        0.337088    0.037612    0.024578
      3          1           0        0.624946   -0.466446    0.946205
      4          1           0        0.796746   -0.394635   -0.862767
      5          1           0        0.487927    1.116427    0.077949
      6          8           0        2.702558    0.038383   -0.228045
      7          1           0        2.756865   -0.878695    0.094436
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.944837   0.000000
     3  H    2.451727   1.089189   0.000000
     4  H    2.534916   1.088808   1.818530   0.000000
     5  H    2.452784   1.090616   1.810560   1.806550   0.000000
     6  O    4.306151   2.378921   2.439301   2.054872   2.482015
     7  H    4.411078   2.588401   2.332496   2.234417   3.021400
                    6          7
     6  O    0.000000
     7  H    0.973640   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.630583   -0.032166   -0.039402
      2          6           0        0.303640    0.097703    0.116503
      3          1           0        0.549568   -0.555858    0.952392
      4          1           0        0.775980   -0.203273   -0.817204
      5          1           0        0.484605    1.148608    0.345181
      6          8           0        2.674453    0.058790   -0.075840
      7          1           0        2.692289   -0.899190    0.097169
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    107.6846298      2.3136397      2.3066154
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4023477127 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.94D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000   -0.000000   -0.000000
         Rot=    0.999999   -0.001123   -0.000000    0.000002 Ang=  -0.13 deg.
 Keep R1 ints in memory in canonical form, NReq=3411511.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487237087     A.U. after    9 cycles
            NFock=  9  Conv=0.22D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038459406D-01 E2=     -0.6144142644D-01
     alpha-beta  T2 =       0.1197386298D+00 E2=     -0.3688747671D+00
     beta-beta   T2 =       0.2038459406D-01 E2=     -0.6144142644D-01
 ANorm=    0.1077268684D+01
 E2 =    -0.4917576200D+00 EUMP2 =    -0.57497899470665D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353837.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.11D-03 Max=1.19D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.85D-03 Max=1.80D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.04D-04 Max=6.95D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.05D-04 Max=2.24D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.90D-05 Max=6.97D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.74D-05 Max=1.65D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.42D-06 Max=3.70D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.00D-06 Max=8.80D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.46D-07 Max=2.06D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.53D-08 Max=6.10D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.17D-08 Max=1.24D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.82D-09 Max=1.22D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.28D-10 Max=2.95D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.66D-11 Max=5.36D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000000279   -0.000000182    0.000000370
      2        6          -0.000006742   -0.000002438   -0.000000524
      3        1          -0.000001469    0.000003208   -0.000000758
      4        1           0.000001950   -0.000000225   -0.000000640
      5        1           0.000006281   -0.000003296    0.000002532
      6        8           0.000001346    0.000000830   -0.000001397
      7        1          -0.000001087    0.000002103    0.000000416
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000006742 RMS     0.000002546

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000004163 RMS     0.000001529
 Search for a saddle point.
 Step number  17 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    8    9   10
                                                     11   12   13   14   15
                                                     16   17
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00633   0.00080   0.00645   0.00786   0.01335
     Eigenvalues ---    0.01781   0.05461   0.05612   0.09072   0.09212
     Eigenvalues ---    0.10808   0.32226   0.35245   0.35677   0.50319
 Eigenvectors required to have negative eigenvalues:
                          R8        R5        R7        R6        D1
   1                    0.43346   0.42439  -0.37022   0.36340  -0.34019
                          R1        A2        A15       A4        A6
   1                   -0.28433   0.18550  -0.16363  -0.12795  -0.11397
 RFO step:  Lambda0=2.797214014D-10 Lambda= 0.00000000D+00.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.00038950 RMS(Int)=  0.00000024
 Iteration  2 RMS(Cart)=  0.00000017 RMS(Int)=  0.00000010
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.67521   0.00000   0.00000   0.00020   0.00020   3.67541
    R2        2.05827  -0.00000   0.00000   0.00001   0.00001   2.05828
    R3        2.05755   0.00000   0.00000  -0.00001  -0.00001   2.05754
    R4        2.06096  -0.00000   0.00000  -0.00003  -0.00003   2.06094
    R5        4.49551   0.00000   0.00000  -0.00027  -0.00027   4.49524
    R6        4.60961   0.00000   0.00000   0.00059   0.00059   4.61020
    R7        3.88315   0.00000   0.00000  -0.00012  -0.00012   3.88303
    R8        4.69033  -0.00000   0.00000  -0.00098  -0.00098   4.68935
    R9        1.83991  -0.00000   0.00000  -0.00001  -0.00001   1.83991
    A1        1.81936  -0.00000   0.00000  -0.00015  -0.00015   1.81920
    A2        1.92223   0.00000   0.00000  -0.00002  -0.00002   1.92221
    A3        1.81953   0.00000   0.00000   0.00006   0.00006   1.81959
    A4        1.97610   0.00000   0.00000   0.00007   0.00007   1.97617
    A5        1.96039  -0.00000   0.00000  -0.00005  -0.00005   1.96035
    A6        1.95432  -0.00000   0.00000   0.00007   0.00007   1.95439
    A7        1.59078  -0.00000   0.00000   0.00027   0.00027   1.59105
    A8        0.81639  -0.00000   0.00000  -0.00006  -0.00006   0.81633
    A9        0.75331  -0.00000   0.00000   0.00002   0.00002   0.75334
   A10        1.25890   0.00000   0.00000  -0.00011  -0.00011   1.25879
   A11        0.79828   0.00000   0.00000   0.00017   0.00017   0.79845
   A12        1.52633  -0.00000   0.00000   0.00066   0.00066   1.52699
   A13        2.00209  -0.00000   0.00000   0.00009   0.00009   2.00218
   A14        3.21650   0.00000   0.00000   0.00027   0.00027   3.21676
   A15        2.97249   0.00000   0.00000   0.00024   0.00024   2.97273
    D1        2.24632  -0.00000   0.00000   0.00012   0.00012   2.24643
    D2        0.54277  -0.00000   0.00000   0.00019   0.00019   0.54296
    D3       -0.61870  -0.00000   0.00000  -0.00010  -0.00010  -0.61880
    D4        2.35484  -0.00000   0.00000   0.00132   0.00132   2.35616
    D5        0.54780  -0.00000   0.00000  -0.00014  -0.00014   0.54767
    D6       -1.70155   0.00000   0.00000   0.00071   0.00071  -1.70084
    D7        0.44956   0.00000   0.00000   0.00145   0.00145   0.45101
         Item               Value     Threshold  Converged?
 Maximum Force            0.000004     0.000015     YES
 RMS     Force            0.000002     0.000010     YES
 Maximum Displacement     0.000871     0.000060     NO 
 RMS     Displacement     0.000390     0.000040     NO 
 Predicted change in Energy=-3.569455D-09
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.594984   -0.172116   -0.052331
      2          6           0        0.337105    0.037481    0.024538
      3          1           0        0.624715   -0.466784    0.946134
      4          1           0        0.796591   -0.394817   -0.862864
      5          1           0        0.488283    1.116224    0.078107
      6          8           0        2.702389    0.038459   -0.228475
      7          1           0        2.757194   -0.878273    0.094897
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.944945   0.000000
     3  H    2.451699   1.089193   0.000000
     4  H    2.534994   1.088803   1.818569   0.000000
     5  H    2.452924   1.090601   1.810524   1.806579   0.000000
     6  O    4.306134   2.378778   2.439612   2.054810   2.481499
     7  H    4.411552   2.588510   2.332679   2.234949   3.020969
                    6          7
     6  O    0.000000
     7  H    0.973637   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.630623   -0.032016   -0.039462
      2          6           0        0.303730    0.097240    0.116681
      3          1           0        0.549371   -0.557806    0.951496
      4          1           0        0.775997   -0.202283   -0.817525
      5          1           0        0.484946    1.147681    0.347212
      6          8           0        2.674394    0.059033   -0.075874
      7          1           0        2.692750   -0.899033    0.096582
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    107.7025989      2.3136012      2.3066047
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4011668287 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.94D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=     0.000000    0.000000   -0.000000
         Rot=    1.000000   -0.000798   -0.000001    0.000001 Ang=  -0.09 deg.
 Keep R1 ints in memory in canonical form, NReq=3411511.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487238384     A.U. after    8 cycles
            NFock=  8  Conv=0.81D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038454310D-01 E2=     -0.6144113151D-01
     alpha-beta  T2 =       0.1197392663D+00 E2=     -0.3688740618D+00
     beta-beta   T2 =       0.2038454310D-01 E2=     -0.6144113151D-01
 ANorm=    0.1077268932D+01
 E2 =    -0.4917563248D+00 EUMP2 =    -0.57497899470860D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353837.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.12D-03 Max=1.19D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.85D-03 Max=1.80D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.04D-04 Max=6.96D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.05D-04 Max=2.24D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.90D-05 Max=6.97D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.74D-05 Max=1.65D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.42D-06 Max=3.70D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.00D-06 Max=8.80D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.46D-07 Max=2.05D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.52D-08 Max=6.09D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.17D-08 Max=1.24D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.82D-09 Max=1.22D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.28D-10 Max=2.95D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.66D-11 Max=5.36D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000006098    0.000001960   -0.000000186
      2        6          -0.000002867   -0.000003734    0.000007872
      3        1           0.000000249   -0.000001311   -0.000001683
      4        1          -0.000000057   -0.000000401   -0.000003035
      5        1          -0.000001879    0.000002821   -0.000003753
      6        8          -0.000000435    0.000001736    0.000001315
      7        1          -0.000001110   -0.000001072   -0.000000529
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000007872 RMS     0.000002865

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000006261 RMS     0.000001694
 Search for a saddle point.
 Step number  18 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    8    9   10
                                                     11   12   13   14   15
                                                     16   17   18
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00649   0.00132   0.00643   0.00780   0.01372
     Eigenvalues ---    0.01673   0.05450   0.05665   0.09065   0.09218
     Eigenvalues ---    0.10844   0.32242   0.35249   0.35672   0.50322
 Eigenvectors required to have negative eigenvalues:
                          R8        R5        R7        R6        D1
   1                    0.43269   0.42589  -0.37238   0.35900  -0.34513
                          R1        A2        A15       A4        A6
   1                   -0.28497   0.18797  -0.16381  -0.12873  -0.11593
 RFO step:  Lambda0=2.642047432D-11 Lambda= 0.00000000D+00.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.00014601 RMS(Int)=  0.00000004
 Iteration  2 RMS(Cart)=  0.00000003 RMS(Int)=  0.00000002
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.67541  -0.00001   0.00000  -0.00014  -0.00014   3.67527
    R2        2.05828  -0.00000   0.00000  -0.00001  -0.00001   2.05827
    R3        2.05754   0.00000   0.00000   0.00001   0.00001   2.05755
    R4        2.06094   0.00000   0.00000   0.00001   0.00001   2.06095
    R5        4.49524  -0.00000   0.00000   0.00014   0.00014   4.49538
    R6        4.61020  -0.00000   0.00000  -0.00025  -0.00025   4.60995
    R7        3.88303   0.00000   0.00000   0.00014   0.00014   3.88317
    R8        4.68935   0.00000   0.00000   0.00028   0.00028   4.68963
    R9        1.83991   0.00000   0.00000   0.00000   0.00000   1.83991
    A1        1.81920   0.00000   0.00000   0.00009   0.00009   1.81929
    A2        1.92221  -0.00000   0.00000   0.00001   0.00001   1.92222
    A3        1.81959  -0.00000   0.00000  -0.00000  -0.00000   1.81959
    A4        1.97617   0.00000   0.00000  -0.00004  -0.00004   1.97613
    A5        1.96035   0.00000   0.00000   0.00001   0.00001   1.96036
    A6        1.95439  -0.00000   0.00000  -0.00006  -0.00006   1.95433
    A7        1.59105  -0.00000   0.00000  -0.00013  -0.00013   1.59093
    A8        0.81633   0.00000   0.00000   0.00002   0.00002   0.81634
    A9        0.75334   0.00000   0.00000  -0.00000  -0.00000   0.75334
   A10        1.25879  -0.00000   0.00000   0.00003   0.00003   1.25882
   A11        0.79845   0.00000   0.00000  -0.00006  -0.00006   0.79839
   A12        1.52699  -0.00000   0.00000  -0.00030  -0.00030   1.52670
   A13        2.00218   0.00000   0.00000  -0.00004  -0.00004   2.00214
   A14        3.21676   0.00000   0.00000  -0.00010  -0.00010   3.21666
   A15        2.97273   0.00000   0.00000  -0.00005  -0.00005   2.97269
    D1        2.24643   0.00000   0.00000  -0.00009  -0.00009   2.24634
    D2        0.54296   0.00000   0.00000  -0.00007  -0.00007   0.54289
    D3       -0.61880   0.00000   0.00000   0.00004   0.00004  -0.61876
    D4        2.35616   0.00000   0.00000  -0.00055  -0.00055   2.35560
    D5        0.54767   0.00000   0.00000   0.00006   0.00006   0.54773
    D6       -1.70084   0.00000   0.00000  -0.00031  -0.00031  -1.70115
    D7        0.45101  -0.00000   0.00000  -0.00062  -0.00062   0.45038
         Item               Value     Threshold  Converged?
 Maximum Force            0.000006     0.000015     YES
 RMS     Force            0.000002     0.000010     YES
 Maximum Displacement     0.000373     0.000060     NO 
 RMS     Displacement     0.000146     0.000040     NO 
 Predicted change in Energy=-1.218554D-09
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.594915   -0.172227   -0.052327
      2          6           0        0.337081    0.037514    0.024553
      3          1           0        0.624810   -0.466670    0.946153
      4          1           0        0.796626   -0.394766   -0.862834
      5          1           0        0.488174    1.116279    0.078027
      6          8           0        2.702459    0.038461   -0.228277
      7          1           0        2.757059   -0.878419    0.094712
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.944868   0.000000
     3  H    2.451701   1.089190   0.000000
     4  H    2.534939   1.088807   1.818550   0.000000
     5  H    2.452856   1.090607   1.810536   1.806549   0.000000
     6  O    4.306132   2.378852   2.439481   2.054884   2.481647
     7  H    4.411350   2.588465   2.332590   2.234751   3.021082
                    6          7
     6  O    0.000000
     7  H    0.973639   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.630599   -0.032062   -0.039435
      2          6           0        0.303673    0.097380    0.116601
      3          1           0        0.549451   -0.557154    0.951775
      4          1           0        0.775959   -0.202634   -0.817443
      5          1           0        0.484839    1.147980    0.346478
      6          8           0        2.674417    0.058959   -0.075841
      7          1           0        2.692562   -0.899094    0.096715
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    107.7014134      2.3136300      2.3066228
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4021454083 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.94D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=     0.000000    0.000000   -0.000000
         Rot=    1.000000    0.000266    0.000000   -0.000000 Ang=   0.03 deg.
 Keep R1 ints in memory in canonical form, NReq=3411511.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487237854     A.U. after    8 cycles
            NFock=  8  Conv=0.39D-08     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038451792D-01 E2=     -0.6144127859D-01
     alpha-beta  T2 =       0.1197385694D+00 E2=     -0.3688742966D+00
     beta-beta   T2 =       0.2038451792D-01 E2=     -0.6144127859D-01
 ANorm=    0.1077268585D+01
 E2 =    -0.4917568538D+00 EUMP2 =    -0.57497899470776D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353837.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.11D-03 Max=1.19D-01 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.85D-03 Max=1.80D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.04D-04 Max=6.95D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.05D-04 Max=2.24D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.90D-05 Max=6.97D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.74D-05 Max=1.65D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.42D-06 Max=3.70D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.00D-06 Max=8.80D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.46D-07 Max=2.06D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.52D-08 Max=6.10D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.17D-08 Max=1.24D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.82D-09 Max=1.22D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.28D-10 Max=2.95D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.66D-11 Max=5.36D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000000337    0.000000079   -0.000000002
      2        6          -0.000000668   -0.000000914    0.000000559
      3        1          -0.000000376    0.000000351   -0.000000189
      4        1          -0.000000073   -0.000000146   -0.000000251
      5        1           0.000000492    0.000000116    0.000000026
      6        8           0.000000761    0.000000378    0.000000002
      7        1          -0.000000473    0.000000135   -0.000000146
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000000914 RMS     0.000000399

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.
 Internal  Forces:  Max     0.000000471 RMS     0.000000196
 Search for a saddle point.
 Step number  19 out of a maximum of   41
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Update second derivatives using D2CorX and points    5    7    8    9   10
                                                     11   12   13   14   15
                                                     16   17   18   19
 ITU=  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0
     Eigenvalues ---   -0.00661   0.00124   0.00640   0.00780   0.01404
     Eigenvalues ---    0.01594   0.05443   0.05689   0.09058   0.09220
     Eigenvalues ---    0.10909   0.32294   0.35247   0.35664   0.50322
 Eigenvectors required to have negative eigenvalues:
                          R5        R8        R7        R6        D1
   1                    0.42594   0.42398  -0.37423   0.36130  -0.34807
                          R1        A2        A15       A4        A6
   1                   -0.28868   0.18964  -0.16140  -0.12878  -0.11926
 RFO step:  Lambda0=1.190954887D-12 Lambda= 0.00000000D+00.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.00001266 RMS(Int)=  0.00000000
 Iteration  2 RMS(Cart)=  0.00000000 RMS(Int)=  0.00000000
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.67527  -0.00000   0.00000  -0.00001  -0.00001   3.67526
    R2        2.05827  -0.00000   0.00000  -0.00000  -0.00000   2.05827
    R3        2.05755   0.00000   0.00000  -0.00000  -0.00000   2.05755
    R4        2.06095   0.00000   0.00000   0.00000   0.00000   2.06095
    R5        4.49538   0.00000   0.00000   0.00002   0.00002   4.49540
    R6        4.60995   0.00000   0.00000  -0.00000  -0.00000   4.60995
    R7        3.88317   0.00000   0.00000   0.00004   0.00004   3.88321
    R8        4.68963  -0.00000   0.00000  -0.00001  -0.00001   4.68962
    R9        1.83991  -0.00000   0.00000  -0.00000  -0.00000   1.83991
    A1        1.81929   0.00000   0.00000   0.00001   0.00001   1.81930
    A2        1.92222   0.00000   0.00000  -0.00000  -0.00000   1.92222
    A3        1.81959   0.00000   0.00000   0.00001   0.00001   1.81960
    A4        1.97613   0.00000   0.00000   0.00000   0.00000   1.97614
    A5        1.96036  -0.00000   0.00000  -0.00000  -0.00000   1.96036
    A6        1.95433  -0.00000   0.00000  -0.00001  -0.00001   1.95432
    A7        1.59093  -0.00000   0.00000  -0.00002  -0.00002   1.59090
    A8        0.81634  -0.00000   0.00000  -0.00000  -0.00000   0.81634
    A9        0.75334  -0.00000   0.00000  -0.00000  -0.00000   0.75334
   A10        1.25882  -0.00000   0.00000  -0.00001  -0.00001   1.25882
   A11        0.79839   0.00000   0.00000  -0.00000  -0.00000   0.79838
   A12        1.52670  -0.00000   0.00000  -0.00004  -0.00004   1.52665
   A13        2.00214  -0.00000   0.00000  -0.00001  -0.00001   2.00212
   A14        3.21666   0.00000   0.00000  -0.00000  -0.00000   3.21666
   A15        2.97269   0.00000   0.00000   0.00001   0.00001   2.97269
    D1        2.24634  -0.00000   0.00000  -0.00001  -0.00001   2.24634
    D2        0.54289   0.00000   0.00000  -0.00000  -0.00000   0.54289
    D3       -0.61876  -0.00000   0.00000  -0.00000  -0.00000  -0.61876
    D4        2.35560  -0.00000   0.00000  -0.00006  -0.00006   2.35555
    D5        0.54773   0.00000   0.00000   0.00000   0.00000   0.54773
    D6       -1.70115   0.00000   0.00000  -0.00003  -0.00003  -1.70118
    D7        0.45038  -0.00000   0.00000  -0.00006  -0.00006   0.45032
         Item               Value     Threshold  Converged?
 Maximum Force            0.000000     0.000015     YES
 RMS     Force            0.000000     0.000010     YES
 Maximum Displacement     0.000037     0.000060     YES
 RMS     Displacement     0.000013     0.000040     YES
 Predicted change in Energy=-2.729858D-11
 Optimization completed.
    -- Stationary point found.
                           ----------------------------
                           !   Optimized Parameters   !
                           ! (Angstroms and Degrees)  !
 --------------------------                            --------------------------
 ! Name  Definition              Value          Derivative Info.                !
 --------------------------------------------------------------------------------
 ! R1    R(1,2)                  1.9449         -DE/DX =    0.0                 !
 ! R2    R(2,3)                  1.0892         -DE/DX =    0.0                 !
 ! R3    R(2,4)                  1.0888         -DE/DX =    0.0                 !
 ! R4    R(2,5)                  1.0906         -DE/DX =    0.0                 !
 ! R5    R(2,6)                  2.3789         -DE/DX =    0.0                 !
 ! R6    R(3,6)                  2.4395         -DE/DX =    0.0                 !
 ! R7    R(4,6)                  2.0549         -DE/DX =    0.0                 !
 ! R8    R(5,6)                  2.4816         -DE/DX =    0.0                 !
 ! R9    R(6,7)                  0.9736         -DE/DX =    0.0                 !
 ! A1    A(1,2,3)              104.2377         -DE/DX =    0.0                 !
 ! A2    A(1,2,4)              110.1352         -DE/DX =    0.0                 !
 ! A3    A(1,2,5)              104.2548         -DE/DX =    0.0                 !
 ! A4    A(3,2,4)              113.2242         -DE/DX =    0.0                 !
 ! A5    A(3,2,5)              112.3204         -DE/DX =    0.0                 !
 ! A6    A(4,2,5)              111.9748         -DE/DX =    0.0                 !
 ! A7    A(2,6,7)               91.1533         -DE/DX =    0.0                 !
 ! A8    A(3,6,4)               46.7731         -DE/DX =    0.0                 !
 ! A9    A(3,6,5)               43.163          -DE/DX =    0.0                 !
 ! A10   A(3,6,7)               72.1252         -DE/DX =    0.0                 !
 ! A11   A(4,6,5)               45.7442         -DE/DX =    0.0                 !
 ! A12   A(4,6,7)               87.4732         -DE/DX =    0.0                 !
 ! A13   A(5,6,7)              114.714          -DE/DX =    0.0                 !
 ! A14   L(1,2,6,3,-1)         184.3012         -DE/DX =    0.0                 !
 ! A15   L(1,2,6,3,-2)         170.3223         -DE/DX =    0.0                 !
 ! D1    D(3,2,5,4)            128.706          -DE/DX =    0.0                 !
 ! D2    D(4,3,6,2)             31.1053         -DE/DX =    0.0                 !
 ! D3    D(5,3,6,2)            -35.4522         -DE/DX =    0.0                 !
 ! D4    D(7,3,6,2)            134.9662         -DE/DX =    0.0                 !
 ! D5    D(5,4,6,2)             31.3826         -DE/DX =    0.0                 !
 ! D6    D(7,4,6,2)            -97.4686         -DE/DX =    0.0                 !
 ! D7    D(7,5,6,2)             25.8051         -DE/DX =    0.0                 !
 --------------------------------------------------------------------------------
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.594915   -0.172227   -0.052327
      2          6           0        0.337081    0.037514    0.024553
      3          1           0        0.624810   -0.466670    0.946153
      4          1           0        0.796626   -0.394766   -0.862834
      5          1           0        0.488174    1.116279    0.078027
      6          8           0        2.702459    0.038461   -0.228277
      7          1           0        2.757059   -0.878419    0.094712
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.944868   0.000000
     3  H    2.451701   1.089190   0.000000
     4  H    2.534939   1.088807   1.818550   0.000000
     5  H    2.452856   1.090607   1.810536   1.806549   0.000000
     6  O    4.306132   2.378852   2.439481   2.054884   2.481647
     7  H    4.411350   2.588465   2.332590   2.234751   3.021082
                    6          7
     6  O    0.000000
     7  H    0.973639   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.630599   -0.032062   -0.039435
      2          6           0        0.303673    0.097380    0.116601
      3          1           0        0.549451   -0.557154    0.951775
      4          1           0        0.775959   -0.202634   -0.817443
      5          1           0        0.484839    1.147980    0.346478
      6          8           0        2.674417    0.058959   -0.075841
      7          1           0        2.692562   -0.899094    0.096715
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    107.7014134      2.3136300      2.3066228

 **********************************************************************

            Population analysis using the SCF density.

 **********************************************************************

 Orbital symmetries:
       Occupied  (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A)
       Virtual   (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
 The electronic state is 1-A.
 Alpha  occ. eigenvalues -- -104.62650 -20.17142 -11.11874 -10.35249  -7.81965
 Alpha  occ. eigenvalues --   -7.81731  -7.81730  -0.91575  -0.90157  -0.72460
 Alpha  occ. eigenvalues --   -0.42186  -0.41575  -0.32734  -0.26185  -0.25904
 Alpha  occ. eigenvalues --   -0.24615  -0.11573  -0.10354
 Alpha virt. eigenvalues --    0.35298   0.39141   0.42168   0.45014   0.48071
 Alpha virt. eigenvalues --    0.76558   0.77317   0.88414   0.94993   0.95442
 Alpha virt. eigenvalues --    0.97265   1.03203   1.03698   1.05371   1.10779
 Alpha virt. eigenvalues --    1.14172   1.17226   1.18813   1.18975   1.20281
 Alpha virt. eigenvalues --    1.36367   1.43868   1.46408   1.58104   1.61468
 Alpha virt. eigenvalues --    1.65533   1.73664   1.82366   1.85876   1.87908
 Alpha virt. eigenvalues --    2.01859   2.06090   2.14278   2.18910   2.22027
 Alpha virt. eigenvalues --    2.29026   2.48257   2.60825   2.63764   2.76531
 Alpha virt. eigenvalues --    2.93288   2.94762   2.95499   3.36602   3.44600
 Alpha virt. eigenvalues --    3.66979   3.67685   4.40182
          Condensed to atoms (all electrons):
               1          2          3          4          5          6
     1  Cl  17.470780   0.090023  -0.034540  -0.027370  -0.035996   0.002384
     2  C    0.090023   4.652854   0.414239   0.378314   0.420674   0.016737
     3  H   -0.034540   0.414239   0.592567  -0.027094  -0.017980   0.009929
     4  H   -0.027370   0.378314  -0.027094   0.552729  -0.018484   0.044886
     5  H   -0.035996   0.420674  -0.017980  -0.018484   0.572340   0.005194
     6  O    0.002384   0.016737   0.009929   0.044886   0.005194   8.477531
     7  H   -0.000674  -0.010843   0.001386  -0.008131  -0.001401   0.295013
               7
     1  Cl  -0.000674
     2  C   -0.010843
     3  H    0.001386
     4  H   -0.008131
     5  H   -0.001401
     6  O    0.295013
     7  H    0.688668
 Mulliken charges:
               1
     1  Cl  -0.464607
     2  C    0.038002
     3  H    0.061493
     4  H    0.105150
     5  H    0.075653
     6  O   -0.851674
     7  H    0.035983
 Sum of Mulliken charges =  -1.00000
 Mulliken charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.464607
     2  C    0.280298
     6  O   -0.815691
 Electronic spatial extent (au):  <R**2>=            501.7975
 Charge=             -1.0000 electrons
 Dipole moment (field-independent basis, Debye):
    X=             -6.1006    Y=             -0.8994    Z=              0.7041  Tot=              6.2066
 Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -63.7726   YY=            -26.7235   ZZ=            -28.2264
   XY=             -3.2392   XZ=              1.1293   YZ=             -0.1730
 Traceless Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -24.1984   YY=             12.8507   ZZ=             11.3478
   XY=             -3.2392   XZ=              1.1293   YZ=             -0.1730
 Octapole moment (field-independent basis, Debye-Ang**2):
  XXX=            -72.8112  YYY=              0.2109  ZZZ=              0.0994  XYY=              3.9489
  XXY=             -8.6106  XXZ=              3.3676  XZZ=              0.2431  YZZ=             -0.5551
  YYZ=              0.5810  XYZ=             -0.4367
 Hexadecapole moment (field-independent basis, Debye-Ang**3):
 XXXX=           -800.0556 YYYY=            -36.5271 ZZZZ=            -36.1360 XXXY=            -23.0451
 XXXZ=              9.9712 YYYX=             -1.7720 YYYZ=              0.0905 ZZZX=              0.1096
 ZZZY=             -0.4477 XXYY=            -94.4881 XXZZ=           -104.1222 YYZZ=            -12.3442
 XXYZ=             -1.1812 YYXZ=              0.4258 ZZXY=             -0.5433
 N-N= 8.940214540826D+01 E-N=-1.553471531827D+03  KE= 5.745259515726D+02
 1\1\GINC-GRA796\FTS\RMP2-FC\CC-pVDZ\C1H4Cl1O1(1-)\RJACKSON\26-Feb-2019
 \0\\# MP2/cc-pVDZ opt(ts, calcfc, noeigen, tight) integral(grid=superf
 ine) scf(maxcyc=256) freq\\OH-chloroform_ts\\-1,1\Cl,-1.5949154587,-0.
 1722270499,-0.0523271219\C,0.3370809195,0.0375138559,0.0245526166\H,0.
 6248096177,-0.4666696977,0.9461526522\H,0.7966257219,-0.3947659299,-0.
 8628336615\H,0.4881744525,1.1162794486,0.0780272256\O,2.702458903,0.03
 84606828,-0.2282773891\H,2.7570588441,-0.8784193098,0.0947116783\\Vers
 ion=EM64L-G09RevE.01\State=1-A\HF=-574.4872379\MP2=-574.9789947\RMSD=3
 .903e-09\RMSF=3.991e-07\Dipole=-2.1878681,-0.3602009,0.3748475\PG=C01 
 [X(C1H4Cl1O1)]\\@


 ... IT IS NO ONE DREAME THAT
     CAN PLEASE THESE ALL ...

                -- BEN JONSON
 Job cpu time:       0 days  0 hours  2 minutes 17.2 seconds.
 File lengths (MBytes):  RWF=    214 Int=      0 D2E=      0 Chk=      2 Scr=      1
 Normal termination of Gaussian 09 at Tue Feb 26 15:01:17 2019.
 Link1:  Proceeding to internal job step number  2.
 ---------------------------------------------------------------------
 #N Geom=AllCheck Guess=TCheck SCRF=Check GenChk RMP2(FC)/CC-pVDZ Freq
 ---------------------------------------------------------------------
 1/5=1,7=10,10=4,11=1,29=7,30=1,38=1,40=1/1,3;
 2/12=2,40=1/2;
 3/5=16,11=1,14=-4,16=1,25=1,30=1,70=2,71=2,75=-7,116=1,140=1/1,2,3;
 4/5=101/1;
 5/5=2,7=256,38=6,98=1/2;
 8/6=3,8=1,10=1,19=11,30=-1/1;
 9/15=3,16=-3/6;
 11/6=1,8=1,15=11,17=12,24=-1,27=1,28=-2,29=300,32=6,42=3/1,2,10;
 10/6=2,21=1/2;
 8/6=4,8=1,10=1,19=11,30=-1/11,4;
 10/5=1,20=4/2;
 11/12=2,14=11,16=1,17=2,28=-2,42=3/2,10,12;
 6/7=2,8=2,9=2,10=2/1;
 7/8=1,10=1,12=2,25=1,44=2/1,2,3,16;
 1/5=1,7=10,10=4,11=1,30=1/3;
 99//99;
 Structure from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 ----------------
 OH-chloroform_ts
 ----------------
 Charge = -1 Multiplicity = 1
 Redundant internal coordinates found in file.
 Cl,0,-1.5949154587,-0.1722270499,-0.0523271219
 C,0,0.3370809195,0.0375138559,0.0245526166
 H,0,0.6248096177,-0.4666696977,0.9461526522
 H,0,0.7966257219,-0.3947659299,-0.8628336615
 H,0,0.4881744525,1.1162794486,0.0780272256
 O,0,2.702458903,0.0384606828,-0.2282773891
 H,0,2.7570588441,-0.8784193098,0.0947116783
 Recover connectivity data from disk.

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 Initialization pass.
                           ----------------------------
                           !    Initial Parameters    !
                           ! (Angstroms and Degrees)  !
 --------------------------                            --------------------------
 ! Name  Definition              Value          Derivative Info.                !
 --------------------------------------------------------------------------------
 ! R1    R(1,2)                  1.9449         calculate D2E/DX2 analytically  !
 ! R2    R(2,3)                  1.0892         calculate D2E/DX2 analytically  !
 ! R3    R(2,4)                  1.0888         calculate D2E/DX2 analytically  !
 ! R4    R(2,5)                  1.0906         calculate D2E/DX2 analytically  !
 ! R5    R(2,6)                  2.3789         calculate D2E/DX2 analytically  !
 ! R6    R(3,6)                  2.4395         calculate D2E/DX2 analytically  !
 ! R7    R(4,6)                  2.0549         calculate D2E/DX2 analytically  !
 ! R8    R(5,6)                  2.4816         calculate D2E/DX2 analytically  !
 ! R9    R(6,7)                  0.9736         calculate D2E/DX2 analytically  !
 ! A1    A(1,2,3)              104.2377         calculate D2E/DX2 analytically  !
 ! A2    A(1,2,4)              110.1352         calculate D2E/DX2 analytically  !
 ! A3    A(1,2,5)              104.2548         calculate D2E/DX2 analytically  !
 ! A4    A(3,2,4)              113.2242         calculate D2E/DX2 analytically  !
 ! A5    A(3,2,5)              112.3204         calculate D2E/DX2 analytically  !
 ! A6    A(4,2,5)              111.9748         calculate D2E/DX2 analytically  !
 ! A7    A(2,6,7)               91.1533         calculate D2E/DX2 analytically  !
 ! A8    A(3,6,4)               46.7731         calculate D2E/DX2 analytically  !
 ! A9    A(3,6,5)               43.163          calculate D2E/DX2 analytically  !
 ! A10   A(3,6,7)               72.1252         calculate D2E/DX2 analytically  !
 ! A11   A(4,6,5)               45.7442         calculate D2E/DX2 analytically  !
 ! A12   A(4,6,7)               87.4732         calculate D2E/DX2 analytically  !
 ! A13   A(5,6,7)              114.714          calculate D2E/DX2 analytically  !
 ! A14   L(1,2,6,3,-1)         184.3012         calculate D2E/DX2 analytically  !
 ! A15   L(1,2,6,3,-2)         170.3223         calculate D2E/DX2 analytically  !
 ! D1    D(3,2,5,4)            128.706          calculate D2E/DX2 analytically  !
 ! D2    D(4,3,6,2)             31.1053         calculate D2E/DX2 analytically  !
 ! D3    D(5,3,6,2)            -35.4522         calculate D2E/DX2 analytically  !
 ! D4    D(7,3,6,2)            134.9662         calculate D2E/DX2 analytically  !
 ! D5    D(5,4,6,2)             31.3826         calculate D2E/DX2 analytically  !
 ! D6    D(7,4,6,2)            -97.4686         calculate D2E/DX2 analytically  !
 ! D7    D(7,5,6,2)             25.8051         calculate D2E/DX2 analytically  !
 --------------------------------------------------------------------------------
 Trust Radius=3.00D-01 FncErr=1.00D-07 GrdErr=1.00D-07
 Number of steps in this run=      2 maximum allowed number of steps=      2.
 Search for a saddle point of order  1.
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.594915   -0.172227   -0.052327
      2          6           0        0.337081    0.037514    0.024553
      3          1           0        0.624810   -0.466670    0.946153
      4          1           0        0.796626   -0.394766   -0.862834
      5          1           0        0.488174    1.116279    0.078027
      6          8           0        2.702459    0.038461   -0.228277
      7          1           0        2.757059   -0.878419    0.094712
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.944868   0.000000
     3  H    2.451701   1.089190   0.000000
     4  H    2.534939   1.088807   1.818550   0.000000
     5  H    2.452856   1.090607   1.810536   1.806549   0.000000
     6  O    4.306132   2.378852   2.439481   2.054884   2.481647
     7  H    4.411350   2.588465   2.332590   2.234751   3.021082
                    6          7
     6  O    0.000000
     7  H    0.973639   0.000000
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Largest Abelian subgroup         C1      NOp   1
 Largest concise Abelian subgroup C1      NOp   1
                         Standard orientation:                         
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.630599   -0.032062   -0.039435
      2          6           0        0.303673    0.097380    0.116601
      3          1           0        0.549451   -0.557154    0.951775
      4          1           0        0.775959   -0.202634   -0.817443
      5          1           0        0.484839    1.147980    0.346478
      6          8           0        2.674417    0.058959   -0.075841
      7          1           0        2.692562   -0.899094    0.096715
 ---------------------------------------------------------------------
 Rotational constants (GHZ):    107.7014134      2.3136300      2.3066228
 Standard basis: CC-pVDZ (5D, 7F)
 There are    69 symmetry adapted cartesian basis functions of A   symmetry.
 There are    66 symmetry adapted basis functions of A   symmetry.
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        89.4021454083 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned on.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.94D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-4523.chk"
 B after Tr=    -0.000000   -0.000000    0.000000
         Rot=    1.000000   -0.000000    0.000000   -0.000000 Ang=   0.00 deg.
 Keep R1 ints in memory in canonical form, NReq=3411511.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.487237854     A.U. after    1 cycles
            NFock=  1  Conv=0.50D-09     -V/T= 1.9999
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Disk-based method using ON**2 memory for 11 occupieds at a time.
 Permanent disk used for amplitudes=      919080 words.
 Estimated scratch disk usage=     7093296 words.
 Actual    scratch disk usage=     7093296 words.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 (rs|ai) integrals will be sorted in core.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038451797D-01 E2=     -0.6144127868D-01
     alpha-beta  T2 =       0.1197385695D+00 E2=     -0.3688742967D+00
     beta-beta   T2 =       0.2038451797D-01 E2=     -0.6144127868D-01
 ANorm=    0.1077268586D+01
 E2 =    -0.4917568541D+00 EUMP2 =    -0.57497899470805D+03
 G2DrvN: will do     8 centers at a time, making    1 passes.
 Calling FoFCou, ICntrl=  3107 FMM=F I1Cent=   0 AccDes= 0.00D+00.
 End of G2Drv F.D. properties file   721 does not exist.
 End of G2Drv F.D. properties file   722 does not exist.
 End of G2Drv F.D. properties file   788 does not exist.
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351898.
          There are    24 degrees of freedom in the 1st order CPHF.  IDoFFX=6 NUNeed=    24.
     21 vectors produced by pass  0 Test12= 3.60D-15 4.17D-09 XBig12= 1.51D+01 2.17D+00.
 AX will form    21 AO Fock derivatives at one time.
     21 vectors produced by pass  1 Test12= 3.60D-15 4.17D-09 XBig12= 7.23D-01 2.39D-01.
     21 vectors produced by pass  2 Test12= 3.60D-15 4.17D-09 XBig12= 3.95D-02 4.18D-02.
     21 vectors produced by pass  3 Test12= 3.60D-15 4.17D-09 XBig12= 4.20D-04 3.51D-03.
     21 vectors produced by pass  4 Test12= 3.60D-15 4.17D-09 XBig12= 2.67D-06 4.15D-04.
     21 vectors produced by pass  5 Test12= 3.60D-15 4.17D-09 XBig12= 1.04D-08 2.26D-05.
     16 vectors produced by pass  6 Test12= 3.60D-15 4.17D-09 XBig12= 5.87D-11 1.15D-06.
      3 vectors produced by pass  7 Test12= 3.60D-15 4.17D-09 XBig12= 4.17D-13 9.27D-08.
      2 vectors produced by pass  8 Test12= 3.60D-15 4.17D-09 XBig12= 2.37D-15 6.81D-09.
 InvSVY:  IOpt=1 It=  1 EMax= 1.78D-15
 Solved reduced A of dimension   147 with    24 vectors.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 MDV=    33554432.
 Form MO integral derivatives with frozen-active canonical formalism.
 Discarding MO integrals.
 Reordered first order wavefunction length =      1492992
 In DefCFB: NBatch=  1 ICI= 18 ICA= 48 LFMax= 18
            Large arrays: LIAPS=    15738624 LIARS=     7928928 words.
 Semi-Direct transformation.
 ModeAB=           4 MOrb=            18 LenV=      33288692
 LASXX=      2037645 LTotXX=     2037645 LenRXX=     4178286
 LTotAB=     2140641 MaxLAS=     2865456 LenRXY=           0
 NonZer=     6215931 LenScr=    10097152 LnRSAI=     2865456
 LnScr1=     5014016 LExtra=           0 Total=     22154910
 MaxDsk=          -1 SrtSym=           T ITran=            4
 JobTyp=0 Pass  1:  I=   1 to  18.
 (rs|ai) integrals will be sorted in core.
 SymMOI:  orbitals are not symmetric.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2038451797D-01 E2=     -0.6144127868D-01
     alpha-beta  T2 =       0.1197385695D+00 E2=     -0.3688742967D+00
     beta-beta   T2 =       0.2038451797D-01 E2=     -0.6144127868D-01
 ANorm=    0.1523487844D+01
 E2 =    -0.4917568541D+00 EUMP2 =    -0.57497899470805D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=8.11D-03 Max=1.19D-01 NDo=     1
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.85D-03 Max=1.80D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=6.04D-04 Max=6.95D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=2.05D-04 Max=2.24D-03 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=6.90D-05 Max=6.97D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=1.74D-05 Max=1.65D-04 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=4.42D-06 Max=3.70D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.00D-06 Max=8.80D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=2.46D-07 Max=2.06D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=5.52D-08 Max=6.10D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.17D-08 Max=1.24D-07 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.82D-09 Max=1.22D-08 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=3.28D-10 Max=2.95D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=7.66D-11 Max=5.36D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Symmetrizing basis deriv contribution to polar:
 IMax=3 JMax=2 DiffMx= 0.00D+00
 G2DrvN: will do     8 centers at a time, making    1 passes.
 Calling FoFCou, ICntrl=  3107 FMM=F I1Cent=   0 AccDes= 0.00D+00.
 End of G2Drv F.D. properties file   721 does not exist.
 End of G2Drv F.D. properties file   722 does not exist.
 End of G2Drv F.D. properties file   788 does not exist.
 R2 and R3 integrals will be kept in memory, NReq=     6654640.
 DD1Dir will call FoFMem   1 times, MxPair=       342
 NAB=   171 NAA=     0 NBB=     0.
 Discarding MO integrals.

 **********************************************************************

            Population analysis using the SCF density.

 **********************************************************************

 Orbital symmetries:
       Occupied  (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A)
       Virtual   (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
                 (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A) (A)
 The electronic state is 1-A.
 Alpha  occ. eigenvalues -- -104.62650 -20.17142 -11.11874 -10.35249  -7.81965
 Alpha  occ. eigenvalues --   -7.81731  -7.81730  -0.91575  -0.90157  -0.72460
 Alpha  occ. eigenvalues --   -0.42186  -0.41575  -0.32734  -0.26185  -0.25904
 Alpha  occ. eigenvalues --   -0.24615  -0.11573  -0.10354
 Alpha virt. eigenvalues --    0.35298   0.39141   0.42168   0.45014   0.48071
 Alpha virt. eigenvalues --    0.76558   0.77317   0.88414   0.94993   0.95442
 Alpha virt. eigenvalues --    0.97265   1.03203   1.03698   1.05371   1.10779
 Alpha virt. eigenvalues --    1.14172   1.17226   1.18813   1.18975   1.20281
 Alpha virt. eigenvalues --    1.36367   1.43868   1.46408   1.58104   1.61468
 Alpha virt. eigenvalues --    1.65533   1.73664   1.82366   1.85876   1.87908
 Alpha virt. eigenvalues --    2.01859   2.06090   2.14278   2.18910   2.22027
 Alpha virt. eigenvalues --    2.29026   2.48257   2.60825   2.63764   2.76531
 Alpha virt. eigenvalues --    2.93288   2.94762   2.95499   3.36602   3.44600
 Alpha virt. eigenvalues --    3.66979   3.67685   4.40182
          Condensed to atoms (all electrons):
               1          2          3          4          5          6
     1  Cl  17.470780   0.090023  -0.034540  -0.027370  -0.035996   0.002384
     2  C    0.090023   4.652854   0.414239   0.378314   0.420674   0.016737
     3  H   -0.034540   0.414239   0.592567  -0.027094  -0.017980   0.009929
     4  H   -0.027370   0.378314  -0.027094   0.552729  -0.018484   0.044886
     5  H   -0.035996   0.420674  -0.017980  -0.018484   0.572340   0.005194
     6  O    0.002384   0.016737   0.009929   0.044886   0.005194   8.477531
     7  H   -0.000674  -0.010843   0.001386  -0.008131  -0.001401   0.295013
               7
     1  Cl  -0.000674
     2  C   -0.010843
     3  H    0.001386
     4  H   -0.008131
     5  H   -0.001401
     6  O    0.295013
     7  H    0.688668
 Mulliken charges:
               1
     1  Cl  -0.464607
     2  C    0.038002
     3  H    0.061493
     4  H    0.105150
     5  H    0.075653
     6  O   -0.851674
     7  H    0.035983
 Sum of Mulliken charges =  -1.00000
 Mulliken charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.464607
     2  C    0.280298
     6  O   -0.815691
 APT charges:
               1
     1  Cl  -0.918072
     2  C    0.902839
     3  H   -0.030192
     4  H    0.074606
     5  H   -0.018667
     6  O   -1.018185
     7  H    0.007671
 Sum of APT charges =  -1.00000
 APT charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.918072
     2  C    0.928586
     6  O   -1.010514
 Electronic spatial extent (au):  <R**2>=            501.7975
 Charge=             -1.0000 electrons
 Dipole moment (field-independent basis, Debye):
    X=             -6.1006    Y=             -0.8994    Z=              0.7041  Tot=              6.2066
 Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -63.7726   YY=            -26.7235   ZZ=            -28.2264
   XY=             -3.2392   XZ=              1.1293   YZ=             -0.1730
 Traceless Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -24.1984   YY=             12.8507   ZZ=             11.3478
   XY=             -3.2392   XZ=              1.1293   YZ=             -0.1730
 Octapole moment (field-independent basis, Debye-Ang**2):
  XXX=            -72.8112  YYY=              0.2109  ZZZ=              0.0994  XYY=              3.9489
  XXY=             -8.6106  XXZ=              3.3676  XZZ=              0.2431  YZZ=             -0.5551
  YYZ=              0.5810  XYZ=             -0.4367
 Hexadecapole moment (field-independent basis, Debye-Ang**3):
 XXXX=           -800.0556 YYYY=            -36.5271 ZZZZ=            -36.1360 XXXY=            -23.0451
 XXXZ=              9.9712 YYYX=             -1.7720 YYYZ=              0.0905 ZZZX=              0.1096
 ZZZY=             -0.4477 XXYY=            -94.4881 XXZZ=           -104.1222 YYZZ=            -12.3442
 XXYZ=             -1.1812 YYXZ=              0.4258 ZZXY=             -0.5433
 N-N= 8.940214540826D+01 E-N=-1.553471531994D+03  KE= 5.745259516333D+02
  Exact polarizability:  71.037  -2.117  24.015   1.143  -0.660  20.801
 Approx polarizability:  39.648   0.527  21.926   0.858  -0.723  18.271
 Calling FoFJK, ICntrl=  10100127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 Full mass-weighted force constant matrix:
 Low frequencies --- -257.5473   -0.5664   -0.0029    0.0028    0.0041    0.1616
 Low frequencies ---    0.9496  140.3729  214.9647
 ******    1 imaginary frequencies (negative Signs) ****** 
 Diagonal vibrational polarizability:
      370.2751412       8.7549894      48.6370846
 Harmonic frequencies (cm**-1), IR intensities (KM/Mole), Raman scattering
 activities (A**4/AMU), depolarization ratios for plane and unpolarized
 incident light, reduced masses (AMU), force constants (mDyne/A),
 and normal coordinates:
                      1                      2                      3
                      A                      A                      A
 Frequencies --   -257.5473               140.3729               214.9647
 Red. masses --      3.6579                 1.9789                 5.1169
 Frc consts  --      0.1430                 0.0230                 0.1393
 IR Inten    --    379.9350                65.1885               244.2590
  Atom  AN      X      Y      Z        X      Y      Z        X      Y      Z
     1  17    -0.05   0.02   0.04     0.01  -0.05   0.02    -0.06   0.04   0.07
     2   6     0.34  -0.08  -0.21    -0.04   0.22  -0.09    -0.26  -0.17  -0.28
     3   1     0.22  -0.14  -0.24     0.16   0.25  -0.13     0.02  -0.15  -0.33
     4   1    -0.43  -0.22  -0.50    -0.06   0.30  -0.13    -0.28  -0.20  -0.29
     5   1     0.25  -0.05  -0.31    -0.16   0.24  -0.09     0.05  -0.22  -0.31
     6   8    -0.16   0.05   0.13     0.04  -0.08   0.08     0.32   0.07   0.12
     7   1    -0.05   0.01  -0.13    -0.37  -0.22  -0.65     0.46   0.05   0.03
                      4                      5                      6
                      A                      A                      A
 Frequencies --    308.2708               347.0590               510.8861
 Red. masses --      1.2261                12.2230                 1.1215
 Frc consts  --      0.0687                 0.8674                 0.1725
 IR Inten    --     21.3309               121.3917                51.4689
  Atom  AN      X      Y      Z        X      Y      Z        X      Y      Z
     1  17    -0.01  -0.02   0.02     0.37   0.04   0.06     0.00  -0.01  -0.00
     2   6     0.01   0.09  -0.08    -0.46  -0.15  -0.25    -0.01   0.06  -0.00
     3   1     0.04  -0.19  -0.31    -0.01  -0.08  -0.32     0.04   0.05  -0.03
     4   1     0.01   0.37  -0.17    -0.13  -0.06  -0.13    -0.00   0.05   0.01
     5   1    -0.04   0.02   0.30    -0.00  -0.23  -0.21    -0.02   0.06   0.01
     6   8     0.00  -0.05  -0.02    -0.45   0.04   0.09    -0.06  -0.04   0.01
     7   1    -0.00   0.09   0.76    -0.32   0.05   0.11     0.98  -0.05  -0.14
                      7                      8                      9
                      A                      A                      A
 Frequencies --    739.1123               950.3141              1120.7748
 Red. masses --      1.2219                 1.1050                 1.0547
 Frc consts  --      0.3933                 0.5879                 0.7805
 IR Inten    --     61.3568                 0.3603                17.5567
  Atom  AN      X      Y      Z        X      Y      Z        X      Y      Z
     1  17    -0.02   0.01   0.02    -0.00   0.02  -0.01    -0.02  -0.00  -0.01
     2   6     0.04  -0.04  -0.11     0.01  -0.08   0.03    -0.04   0.00   0.01
     3   1    -0.21   0.06   0.04     0.70   0.16   0.02     0.62   0.08  -0.10
     4   1     0.91   0.11   0.22     0.01   0.19  -0.06     0.28   0.05   0.12
     5   1    -0.19  -0.02   0.02    -0.65   0.05  -0.08     0.70  -0.09  -0.03
     6   8    -0.02   0.01   0.02    -0.00  -0.00  -0.00    -0.02   0.00   0.00
     7   1     0.01  -0.01  -0.07     0.01   0.01   0.07    -0.04   0.01   0.01
                     10                     11                     12
                      A                      A                      A
 Frequencies --   1421.7261              1437.1411              3196.7226
 Red. masses --      1.0774                 1.0711                 1.0214
 Frc consts  --      1.2832                 1.3034                 6.1500
 IR Inten    --      6.2725                 3.1876                 2.5959
  Atom  AN      X      Y      Z        X      Y      Z        X      Y      Z
     1  17    -0.00  -0.00  -0.00     0.00  -0.00   0.00     0.00   0.00  -0.00
     2   6     0.00  -0.03  -0.07     0.00  -0.07   0.03    -0.03  -0.01  -0.01
     3   1     0.00   0.58   0.42    -0.23   0.15   0.24     0.12  -0.36   0.45
     4   1    -0.15   0.02  -0.14    -0.03   0.76  -0.25     0.19  -0.15  -0.47
     5   1     0.10  -0.19   0.63     0.21   0.01  -0.42     0.08   0.59   0.12
     6   8     0.00  -0.00  -0.00    -0.00  -0.00  -0.00    -0.00   0.00   0.00
     7   1     0.01  -0.00  -0.00     0.03   0.01   0.03    -0.00   0.00  -0.00
                     13                     14                     15
                      A                      A                      A
 Frequencies --   3345.5304              3371.4497              3714.8817
 Red. masses --      1.1138                 1.1151                 1.0673
 Frc consts  --      7.3446                 7.4681                 8.6784
 IR Inten    --      5.9789                17.8322                90.4521
  Atom  AN      X      Y      Z        X      Y      Z        X      Y      Z
     1  17    -0.00   0.00  -0.00    -0.00   0.00   0.00     0.00   0.00  -0.00
     2   6     0.01  -0.10   0.02     0.02  -0.01  -0.10    -0.00  -0.00   0.00
     3   1    -0.14   0.38  -0.49     0.11  -0.30   0.37    -0.00   0.01  -0.01
     4   1    -0.06   0.03   0.15    -0.32   0.24   0.73    -0.00  -0.00   0.00
     5   1     0.12   0.72   0.16     0.04   0.23   0.03    -0.00   0.01   0.00
     6   8     0.00   0.00  -0.00     0.00  -0.00  -0.00     0.00  -0.06   0.01
     7   1    -0.00  -0.01   0.00    -0.00   0.00  -0.00    -0.01   0.98  -0.18

 -------------------
 - Thermochemistry -
 -------------------
 Temperature   298.150 Kelvin.  Pressure   1.00000 Atm.
 Atom     1 has atomic number 17 and mass  34.96885
 Atom     2 has atomic number  6 and mass  12.00000
 Atom     3 has atomic number  1 and mass   1.00783
 Atom     4 has atomic number  1 and mass   1.00783
 Atom     5 has atomic number  1 and mass   1.00783
 Atom     6 has atomic number  8 and mass  15.99491
 Atom     7 has atomic number  1 and mass   1.00783
 Molecular mass:    66.99507 amu.
 Principal axes and moments of inertia in atomic units:
                           1         2         3
     Eigenvalues --    16.75689 780.04745 782.41712
           X            0.99994  -0.01105   0.00248
           Y            0.01124   0.99546  -0.09452
           Z           -0.00143   0.09454   0.99552
 This molecule is an asymmetric top.
 Rotational symmetry number  1.
 Rotational temperatures (Kelvin)      5.16885     0.11104     0.11070
 Rotational constants (GHZ):         107.70141     2.31363     2.30662
    1 imaginary frequencies ignored.
 Zero-point vibrational energy     124526.5 (Joules/Mol)
                                   29.76255 (Kcal/Mol)
 Warning -- explicit consideration of   5 degrees of freedom as
           vibrations may cause significant error
 Vibrational temperatures:    201.97   309.29   443.53   499.34   735.05
          (Kelvin)           1063.42  1367.29  1612.54  2045.54  2067.72
                             4599.37  4813.47  4850.76  5344.88
 
 Zero-point correction=                           0.047430 (Hartree/Particle)
 Thermal correction to Energy=                    0.052629
 Thermal correction to Enthalpy=                  0.053574
 Thermal correction to Gibbs Free Energy=         0.019928
 Sum of electronic and zero-point Energies=           -574.931565
 Sum of electronic and thermal Energies=              -574.926365
 Sum of electronic and thermal Enthalpies=            -574.925421
 Sum of electronic and thermal Free Energies=         -574.959067
 
                     E (Thermal)             CV                S
                      KCal/Mol        Cal/Mol-Kelvin    Cal/Mol-Kelvin
 Total                   33.025             15.803             70.813
 Electronic               0.000              0.000              0.000
 Translational            0.889              2.981             38.524
 Rotational               0.889              2.981             23.840
 Vibrational             31.248              9.842              8.449
 Vibration     1          0.615              1.913              2.799
 Vibration     2          0.645              1.818              2.001
 Vibration     3          0.698              1.658              1.372
 Vibration     4          0.725              1.581              1.180
 Vibration     5          0.866              1.226              0.631
                       Q            Log10(Q)             Ln(Q)
 Total Bot       0.681985D-09         -9.166225        -21.106013
 Total V=0       0.446529D+13         12.649849         29.127354
 Vib (Bot)       0.874043D-21        -21.058467        -48.488913
 Vib (Bot)    1  0.144839D+01          0.160887          0.370456
 Vib (Bot)    2  0.922091D+00         -0.035226         -0.081111
 Vib (Bot)    3  0.614013D+00         -0.211822         -0.487739
 Vib (Bot)    4  0.532620D+00         -0.273582         -0.629946
 Vib (Bot)    5  0.318581D+00         -0.496780         -1.143879
 Vib (V=0)       0.572278D+01          0.757607          1.744455
 Vib (V=0)    1  0.203227D+01          0.307981          0.709153
 Vib (V=0)    2  0.154893D+01          0.190031          0.437564
 Vib (V=0)    3  0.129184D+01          0.111209          0.256068
 Vib (V=0)    4  0.123054D+01          0.090095          0.207451
 Vib (V=0)    5  0.109287D+01          0.038568          0.088806
 Electronic      0.100000D+01          0.000000          0.000000
 Translational   0.215536D+08          7.333519         16.886053
 Rotational      0.362012D+05          4.558723         10.496847
 ***** Axes restored to original set *****
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000000333    0.000000079   -0.000000003
      2        6          -0.000000660   -0.000000914    0.000000560
      3        1          -0.000000377    0.000000351   -0.000000189
      4        1          -0.000000074   -0.000000146   -0.000000251
      5        1           0.000000492    0.000000116    0.000000025
      6        8           0.000000759    0.000000376    0.000000004
      7        1          -0.000000473    0.000000137   -0.000000147
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000000914 RMS     0.000000398
 FormGI is forming the generalized inverse of G from B-inverse, IUseBI=4.

 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad
 Berny optimization.
 Internal  Forces:  Max     0.000000471 RMS     0.000000196
 Search for a saddle point.
 Step number   1 out of a maximum of    2
 All quantities printed in internal units (Hartrees-Bohrs-Radians)
 Swapping is turned off.
 Second derivative matrix not updated -- analytic derivatives used.
 ITU=  0
     Eigenvalues ---   -0.00645   0.00132   0.00639   0.00718   0.01041
     Eigenvalues ---    0.01549   0.05552   0.06185   0.09027   0.10071
     Eigenvalues ---    0.12723   0.31992   0.34061   0.35088   0.49505
 Eigenvectors required to have negative eigenvalues:
                          R5        R8        R7        R6        D1
   1                    0.41639   0.41463  -0.39173   0.36847  -0.34371
                          R1        A2        A15       A4        A6
   1                   -0.28652   0.18934  -0.16287  -0.12421  -0.12196
 Angle between quadratic step and forces=  56.69 degrees.
 Linear search not attempted -- option 19 set.
 Iteration  1 RMS(Cart)=  0.00001320 RMS(Int)=  0.00000000
 Iteration  2 RMS(Cart)=  0.00000000 RMS(Int)=  0.00000000
 Variable       Old X    -DE/DX   Delta X   Delta X   Delta X     New X
                                 (Linear)    (Quad)   (Total)
    R1        3.67527  -0.00000   0.00000  -0.00001  -0.00001   3.67526
    R2        2.05827  -0.00000   0.00000  -0.00000  -0.00000   2.05827
    R3        2.05755   0.00000   0.00000   0.00000   0.00000   2.05755
    R4        2.06095   0.00000   0.00000   0.00000   0.00000   2.06095
    R5        4.49538   0.00000   0.00000   0.00002   0.00002   4.49540
    R6        4.60995   0.00000   0.00000   0.00001   0.00001   4.60996
    R7        3.88317   0.00000   0.00000   0.00005   0.00005   3.88322
    R8        4.68963  -0.00000   0.00000  -0.00002  -0.00002   4.68961
    R9        1.83991  -0.00000   0.00000  -0.00000  -0.00000   1.83991
    A1        1.81929   0.00000   0.00000   0.00000   0.00000   1.81930
    A2        1.92222   0.00000   0.00000  -0.00000  -0.00000   1.92222
    A3        1.81959   0.00000   0.00000   0.00001   0.00001   1.81960
    A4        1.97613   0.00000   0.00000   0.00000   0.00000   1.97614
    A5        1.96036  -0.00000   0.00000  -0.00000  -0.00000   1.96036
    A6        1.95433  -0.00000   0.00000  -0.00001  -0.00001   1.95432
    A7        1.59093  -0.00000   0.00000  -0.00003  -0.00003   1.59090
    A8        0.81634  -0.00000   0.00000  -0.00000  -0.00000   0.81634
    A9        0.75334  -0.00000   0.00000  -0.00000  -0.00000   0.75334
   A10        1.25882  -0.00000   0.00000  -0.00001  -0.00001   1.25881
   A11        0.79839   0.00000   0.00000  -0.00000  -0.00000   0.79839
   A12        1.52670  -0.00000   0.00000  -0.00005  -0.00005   1.52665
   A13        2.00214  -0.00000   0.00000  -0.00002  -0.00002   2.00212
   A14        3.21666   0.00000   0.00000   0.00000   0.00000   3.21666
   A15        2.97269   0.00000   0.00000   0.00001   0.00001   2.97270
    D1        2.24634  -0.00000   0.00000  -0.00000  -0.00000   2.24634
    D2        0.54289   0.00000   0.00000   0.00000   0.00000   0.54289
    D3       -0.61876  -0.00000   0.00000  -0.00000  -0.00000  -0.61876
    D4        2.35560  -0.00000   0.00000  -0.00005  -0.00005   2.35555
    D5        0.54773   0.00000   0.00000   0.00000   0.00000   0.54773
    D6       -1.70115   0.00000   0.00000  -0.00003  -0.00003  -1.70118
    D7        0.45038  -0.00000   0.00000  -0.00006  -0.00006   0.45033
         Item               Value     Threshold  Converged?
 Maximum Force            0.000000     0.000015     YES
 RMS     Force            0.000000     0.000010     YES
 Maximum Displacement     0.000033     0.000060     YES
 RMS     Displacement     0.000013     0.000040     YES
 Predicted change in Energy=-3.552353D-11
 Optimization completed.
    -- Stationary point found.
                           ----------------------------
                           !   Optimized Parameters   !
                           ! (Angstroms and Degrees)  !
 --------------------------                            --------------------------
 ! Name  Definition              Value          Derivative Info.                !
 --------------------------------------------------------------------------------
 ! R1    R(1,2)                  1.9449         -DE/DX =    0.0                 !
 ! R2    R(2,3)                  1.0892         -DE/DX =    0.0                 !
 ! R3    R(2,4)                  1.0888         -DE/DX =    0.0                 !
 ! R4    R(2,5)                  1.0906         -DE/DX =    0.0                 !
 ! R5    R(2,6)                  2.3789         -DE/DX =    0.0                 !
 ! R6    R(3,6)                  2.4395         -DE/DX =    0.0                 !
 ! R7    R(4,6)                  2.0549         -DE/DX =    0.0                 !
 ! R8    R(5,6)                  2.4816         -DE/DX =    0.0                 !
 ! R9    R(6,7)                  0.9736         -DE/DX =    0.0                 !
 ! A1    A(1,2,3)              104.2377         -DE/DX =    0.0                 !
 ! A2    A(1,2,4)              110.1352         -DE/DX =    0.0                 !
 ! A3    A(1,2,5)              104.2548         -DE/DX =    0.0                 !
 ! A4    A(3,2,4)              113.2242         -DE/DX =    0.0                 !
 ! A5    A(3,2,5)              112.3204         -DE/DX =    0.0                 !
 ! A6    A(4,2,5)              111.9748         -DE/DX =    0.0                 !
 ! A7    A(2,6,7)               91.1533         -DE/DX =    0.0                 !
 ! A8    A(3,6,4)               46.7731         -DE/DX =    0.0                 !
 ! A9    A(3,6,5)               43.163          -DE/DX =    0.0                 !
 ! A10   A(3,6,7)               72.1252         -DE/DX =    0.0                 !
 ! A11   A(4,6,5)               45.7442         -DE/DX =    0.0                 !
 ! A12   A(4,6,7)               87.4732         -DE/DX =    0.0                 !
 ! A13   A(5,6,7)              114.714          -DE/DX =    0.0                 !
 ! A14   L(1,2,6,3,-1)         184.3012         -DE/DX =    0.0                 !
 ! A15   L(1,2,6,3,-2)         170.3223         -DE/DX =    0.0                 !
 ! D1    D(3,2,5,4)            128.706          -DE/DX =    0.0                 !
 ! D2    D(4,3,6,2)             31.1053         -DE/DX =    0.0                 !
 ! D3    D(5,3,6,2)            -35.4522         -DE/DX =    0.0                 !
 ! D4    D(7,3,6,2)            134.9662         -DE/DX =    0.0                 !
 ! D5    D(5,4,6,2)             31.3826         -DE/DX =    0.0                 !
 ! D6    D(7,4,6,2)            -97.4686         -DE/DX =    0.0                 !
 ! D7    D(7,5,6,2)             25.8051         -DE/DX =    0.0                 !
 --------------------------------------------------------------------------------
 GradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGradGrad

 1\1\GINC-GRA796\Freq\RMP2-FC\CC-pVDZ\C1H4Cl1O1(1-)\RJACKSON\26-Feb-201
 9\0\\#N Geom=AllCheck Guess=TCheck SCRF=Check GenChk RMP2(FC)/CC-pVDZ 
 Freq\\OH-chloroform_ts\\-1,1\Cl,-1.5949154587,-0.1722270499,-0.0523271
 219\C,0.3370809195,0.0375138559,0.0245526166\H,0.6248096177,-0.4666696
 977,0.9461526522\H,0.7966257219,-0.3947659299,-0.8628336615\H,0.488174
 4525,1.1162794486,0.0780272256\O,2.702458903,0.0384606828,-0.228277389
 1\H,2.7570588441,-0.8784193098,0.0947116783\\Version=EM64L-G09RevE.01\
 State=1-A\HF=-574.4872379\MP2=-574.9789947\RMSD=4.956e-10\RMSF=3.983e-
 07\ZeroPoint=0.0474296\Thermal=0.0526294\Dipole=-2.187868,-0.3602009,0
 .3748475\DipoleDeriv=-1.9460275,-0.0022622,0.0215029,-0.1330213,-0.405
 5943,0.0011659,-0.0159228,-0.001606,-0.4025951,2.5752919,0.0605018,-0.
 0208951,0.1996334,0.0982615,-0.0320868,0.1039275,-0.0246089,0.0349635,
 -0.1011307,0.0032309,-0.045046,-0.0152444,0.0285144,0.0506764,-0.01019
 06,0.0537992,-0.0179604,0.1452794,-0.004425,0.0190621,-0.0509163,0.035
 0479,-0.0085314,-0.1207579,-0.0159089,0.0434914,-0.075474,-0.0192075,-
 0.0112852,0.0029542,-0.0569345,-0.0045959,-0.0090054,-0.0096705,0.0764
 087,-1.7656696,-0.032125,0.0398516,-0.0926708,-0.4279228,-0.1661798,0.
 0739775,-0.1614255,-0.8609639,0.1677305,-0.005713,-0.0031903,0.0892652
 ,-0.2713721,0.1595516,-0.0220282,0.1594206,0.1266557\Polar=71.1526611,
 -0.5412113,23.6511888,0.041643,-1.0769239,21.0489833\PG=C01 [X(C1H4Cl1
 O1)]\NImag=1\\0.09946118,0.01022748,0.01927798,0.00576532,0.00035306,0
 .01799061,-0.00947911,0.00260072,0.00049535,0.09549769,-0.00019825,-0.
 03259906,-0.00061669,-0.06276401,0.62742784,-0.00211709,-0.00080211,-0
 .03366036,-0.03419626,-0.00164274,0.64640365,-0.02213906,0.00551004,-0
 .01416259,-0.03623242,0.04320224,-0.07103655,0.06117452,-0.00661217,0.
 00220471,-0.00492416,0.04389983,-0.11717800,0.12731396,-0.04201139,0.1
 1815856,0.00498243,-0.00203555,0.00445482,-0.07012849,0.12998242,-0.28
 348066,0.07240470,-0.13486119,0.28779916,-0.01847308,0.00264858,0.0077
 7171,-0.04851997,0.05949416,0.11053689,0.00380010,-0.00283331,-0.00858
 536,0.07218344,-0.00802764,0.00146296,0.00477193,0.06130693,-0.1017117
 9,-0.11120470,-0.00419984,0.00727715,0.01348308,-0.05877530,0.10555147
 ,-0.01182089,0.00295490,0.00719260,0.11554888,-0.11120752,-0.27542095,
 0.00827500,-0.01163824,-0.01451186,-0.11164432,0.11493861,0.28304811,-
 0.01996271,-0.01901662,-0.00153108,-0.02376380,-0.04072289,-0.00152581
 ,0.00184284,0.00727690,0.00017348,0.00228181,0.00921699,0.00074580,0.0
 4587853,0.00381854,0.00549922,0.00025056,-0.03895872,-0.36628180,-0.01
 499161,-0.00247330,-0.01015698,-0.00414749,-0.00364715,-0.00871257,0.0
 0302763,0.04177439,0.37598738,-0.00097717,-0.00089095,0.00003700,0.000
 35726,-0.01711469,-0.04827157,0.00275332,0.02596523,0.00311524,-0.0035
 7997,-0.02452275,0.00169553,0.00159609,0.01559191,0.04450161,-0.028913
 67,-0.00050344,0.00120709,0.02218013,-0.00375857,-0.00035217,-0.007605
 63,-0.00058887,-0.00042049,-0.01059983,-0.00152515,0.00041229,-0.00513
 993,0.00046491,0.00039327,0.03738712,-0.00061550,0.00339561,0.00048777
 ,-0.00285232,-0.00820584,-0.00008499,-0.00022722,-0.00070190,-0.001227
 94,0.00398697,-0.00396614,0.00208725,0.00259355,0.00262082,0.00083368,
 -0.02176532,0.44691747,0.00456403,0.00044919,0.00415172,-0.01361671,0.
 00382106,-0.00728359,0.00030987,-0.00200543,0.00296159,0.00656316,-0.0
 0029180,-0.00048124,0.00038356,0.00017558,-0.00031724,0.00761095,-0.15
 656365,0.05691964,-0.00049355,-0.00146677,0.00045420,0.00031748,0.0047
 4732,-0.00130901,-0.00084034,0.00086900,0.00157374,-0.00067247,0.00200
 402,-0.00151676,-0.00113674,-0.00097866,-0.00054281,-0.00730819,0.0188
 7984,-0.00581486,0.01013381,0.00140754,0.00075858,-0.00032247,-0.00323
 243,-0.00145135,0.00141218,0.00019946,0.00039647,-0.00119333,-0.000873
 95,0.00009892,-0.00016263,-0.00112231,0.00104393,0.00013757,0.02767644
 ,-0.44006002,0.15441505,-0.02405475,0.43921346,-0.00039663,-0.00002854
 ,-0.00016638,0.00153997,-0.00322184,0.00171347,0.00145624,0.00014982,-
 0.00033829,-0.00106210,0.00282562,-0.00152219,0.00015796,0.00009342,-0
 .00076057,-0.00885094,0.15446789,-0.05595088,0.00715550,-0.15428638,0.
 05702484\\-0.00000033,-0.00000008,0.,0.00000066,0.00000091,-0.00000056
 ,0.00000038,-0.00000035,0.00000019,0.00000007,0.00000015,0.00000025,-0
 .00000049,-0.00000012,-0.00000003,-0.00000076,-0.00000038,0.,0.0000004
 7,-0.00000014,0.00000015\\\@


 EDUCATION IS NOT TRAINING BUT RATHER THE PROCESS THAT EQUIPS YOU TO
 ENTERTAIN YOURSELF, A FRIEND, OR AN IDEA.  -- WALLACE STERLING
 Job cpu time:       0 days  0 hours  0 minutes 35.8 seconds.
 File lengths (MBytes):  RWF=    214 Int=      0 D2E=      0 Chk=      2 Scr=      1
 Normal termination of Gaussian 09 at Tue Feb 26 15:01:53 2019.
