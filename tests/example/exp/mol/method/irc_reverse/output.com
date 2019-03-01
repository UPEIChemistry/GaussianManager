 Entering Gaussian System, Link 0=g09
 Initial command:
 /opt/software/gaussian/g09.e01/l1.exe "/localscratch/rjackson.12067818.0/Gau-6165.inp" -scrdir="/localscratch/rjackson.12067818.0/"
 Entering Link 1 = /opt/software/gaussian/g09.e01/l1.exe PID=      6166.
  
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
 # MP2/cc-pVDZ irc(reverse, calcfc, maxpoints=64, stepsize=5, tight) in
 tegral(grid=superfine) scf(maxcyc=256)
 ----------------------------------------------------------------------
 1/7=10,10=4,18=10,22=2,38=1,39=5,42=64,44=3/1,23;
 2/12=2,17=6,18=5,29=1,40=1/2;
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
 1/7=10,10=4,18=10,22=2,39=5,42=64,44=3/23(2);
 2/29=1/2;
 99/5=20/99;
 2/29=1/2;
 3/5=16,11=9,16=1,25=1,30=1,71=2,75=-7,140=1/1,2,3;
 4/5=5,16=3,69=1/1;
 5/5=2,7=256,38=5/2;
 8/6=3,8=1,10=1,19=11,30=-1/1;
 9/15=3,16=-3/6;
 11/6=1,8=1,15=11,17=12,24=-1,27=1,28=-2,29=300,32=6,42=3/1,2,10;
 10/6=2,21=1/2;
 8/6=4,8=1,10=1,19=11,30=-1/11,4;
 10/5=1,20=4/2;
 11/12=2,14=11,16=1,17=2,28=-2,42=3/2,10,12;
 7/10=1,12=2,25=1,44=2/1,2,3,16;
 1/7=10,18=10,22=2,39=5,42=64,44=3/23(-12);
 2/29=1/2;
 6/7=2,8=2,9=2,10=2/1;
 99/5=20/99;
 -------------------------
 OH-chloroform_ts_reactant
 -------------------------
 Symbolic Z-matrix:
 Charge = -1 Multiplicity = 1
 Cl                   -1.93155  -0.1238    0.0446 
 C                     1.3813    0.22453  -0.02821 
 H                     0.92984  -0.20774   0.87951 
 H                     0.8751   -0.23997  -0.88972 
 H                     1.14122   1.29653  -0.04056 
 O                     2.81413   0.10259  -0.06941 
 H                     2.97615  -0.84844  -0.06052 
 
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 ------------------------------------------------------------------------
 INPUT DATA FOR L123
 ------------------------------------------------------------------------
 GENERAL PARAMETERS:
 Rxn path following direction = Reverse
 Maximum points per path      =  64
 Step size                    =   0.050 bohr
 Integration scheme           = HPC                                 
    Redo corrector integration= Yes                                 
    DWI Weight Power          =  2
    DWI will use Hessian update vectors when possible.
    Max correction cycles     =  20
 Initial Hessian              = CalcFC
 Hessian evaluation           = All updating
 Hessian updating method      = Bofill                              
 ------------------------------------------------------------------------
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.931554   -0.123801    0.044598
      2          6           0        1.381298    0.224529   -0.028211
      3          1           0        0.929837   -0.207742    0.879509
      4          1           0        0.875098   -0.239965   -0.889715
      5          1           0        1.141216    1.296531   -0.040560
      6          8           0        2.814133    0.102585   -0.069414
      7          1           0        2.976145   -0.848435   -0.060521
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    3.331910   0.000000
     3  H    2.981892   1.102103   0.000000
     4  H    2.960360   1.101899   1.770364   0.000000
     5  H    3.386224   1.098626   1.775963   1.775585   0.000000
     6  O    4.752451   1.438605   2.132447   2.133094   2.055478
     7  H    4.962021   1.922455   2.341265   2.339273   2.822807
                    6          7
     6  O    0.000000
     7  H    0.964762   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):    109.7161587      1.7163152      1.7079260
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        81.7808379227 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.62D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       7 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410299.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.600021088     A.U. after   11 cycles
            NFock= 11  Conv=0.73D-08     -V/T= 2.0002
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Disk-based method using ON**2 memory for 11 occupieds at a time.
 Permanent disk used for amplitudes=      919080 words.
 Estimated scratch disk usage=     6984360 words.
 Actual    scratch disk usage=     6984360 words.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 (rs|ai) integrals will be sorted in core.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.1818015596D-01 E2=     -0.5886087984D-01
     alpha-beta  T2 =       0.1096839429D+00 E2=     -0.3587308669D+00
     beta-beta   T2 =       0.1818015596D-01 E2=     -0.5886087984D-01
 ANorm=    0.1070534565D+01
 E2 =    -0.4764526266D+00 EUMP2 =    -0.57507647371486D+03
 G2DrvN: will do     8 centers at a time, making    1 passes.
 Calling FoFCou, ICntrl=  3107 FMM=F I1Cent=   0 AccDes= 0.00D+00.
 End of G2Drv F.D. properties file   721 does not exist.
 End of G2Drv F.D. properties file   722 does not exist.
 End of G2Drv F.D. properties file   788 does not exist.
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3350414.
          There are    24 degrees of freedom in the 1st order CPHF.  IDoFFX=6 NUNeed=    24.
     21 vectors produced by pass  0 Test12= 3.60D-15 4.17D-09 XBig12= 6.36D+00 9.16D-01.
 AX will form    21 AO Fock derivatives at one time.
     21 vectors produced by pass  1 Test12= 3.60D-15 4.17D-09 XBig12= 2.43D-01 1.48D-01.
     21 vectors produced by pass  2 Test12= 3.60D-15 4.17D-09 XBig12= 7.18D-03 1.91D-02.
     21 vectors produced by pass  3 Test12= 3.60D-15 4.17D-09 XBig12= 5.08D-05 1.71D-03.
     21 vectors produced by pass  4 Test12= 3.60D-15 4.17D-09 XBig12= 3.43D-07 1.42D-04.
     21 vectors produced by pass  5 Test12= 3.60D-15 4.17D-09 XBig12= 1.90D-09 8.03D-06.
     12 vectors produced by pass  6 Test12= 3.60D-15 4.17D-09 XBig12= 1.09D-11 7.34D-07.
      3 vectors produced by pass  7 Test12= 3.60D-15 4.17D-09 XBig12= 6.13D-14 3.98D-08.
 InvSVY:  IOpt=1 It=  1 EMax= 1.78D-15
 Solved reduced A of dimension   141 with    24 vectors.
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
 ModeAB=           4 MOrb=            18 LenV=      33289690
 LASXX=      2037645 LTotXX=     2037645 LenRXX=     4178286
 LTotAB=     2140641 MaxLAS=     2858328 LenRXY=           0
 NonZer=     6215931 LenScr=    10097152 LnRSAI=     2858328
 LnScr1=     4999680 LExtra=           0 Total=     22133446
 MaxDsk=          -1 SrtSym=           T ITran=            4
 JobTyp=0 Pass  1:  I=   1 to  18.
 (rs|ai) integrals will be sorted in core.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.1818015596D-01 E2=     -0.5886087984D-01
     alpha-beta  T2 =       0.1096839429D+00 E2=     -0.3587308669D+00
     beta-beta   T2 =       0.1818015596D-01 E2=     -0.5886087984D-01
 ANorm=    0.1513964501D+01
 E2 =    -0.4764526266D+00 EUMP2 =    -0.57507647371486D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=3.55D-03 Max=3.13D-02 NDo=     1
 LinEq1:  Iter=  1 NonCon=     1 RMS=8.28D-04 Max=6.63D-03 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=1.99D-04 Max=1.43D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.45D-05 Max=6.79D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=1.79D-05 Max=1.77D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=4.10D-06 Max=3.70D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=9.47D-07 Max=7.84D-06 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.72D-07 Max=1.38D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=3.03D-08 Max=2.34D-07 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.84D-09 Max=4.23D-08 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=9.98D-10 Max=1.03D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.64D-10 Max=1.35D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     0 RMS=3.10D-11 Max=2.84D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    12 iterations.
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

 Alpha  occ. eigenvalues -- -104.47768 -20.41880 -11.11962 -10.19892  -7.66521
 Alpha  occ. eigenvalues --   -7.66513  -7.66511  -1.21146  -0.76316  -0.71180
 Alpha  occ. eigenvalues --   -0.53808  -0.45851  -0.43706  -0.35351  -0.30125
 Alpha  occ. eigenvalues --   -0.13185  -0.13157  -0.13152
 Alpha virt. eigenvalues --    0.31297   0.37401   0.42730   0.43552   0.52941
 Alpha virt. eigenvalues --    0.78247   0.79019   0.87032   0.94250   1.00643
 Alpha virt. eigenvalues --    1.03392   1.04859   1.07218   1.08780   1.09011
 Alpha virt. eigenvalues --    1.21369   1.27756   1.29125   1.29934   1.32508
 Alpha virt. eigenvalues --    1.32518   1.33006   1.33725   1.38678   1.46227
 Alpha virt. eigenvalues --    1.47030   1.57116   1.70959   1.79422   1.84118
 Alpha virt. eigenvalues --    2.03058   2.07859   2.09301   2.11378   2.18696
 Alpha virt. eigenvalues --    2.28132   2.46690   2.50642   2.56180   2.63002
 Alpha virt. eigenvalues --    2.90019   2.90226   2.92341   3.44027   3.50569
 Alpha virt. eigenvalues --    3.58071   3.71367   4.20896
          Condensed to atoms (all electrons):
               1          2          3          4          5          6
     1  Cl  17.938337  -0.011942   0.013415   0.014034   0.004922   0.000197
     2  C   -0.011942   4.394267   0.414445   0.414804   0.407509   0.281539
     3  H    0.013415   0.414445   0.627951  -0.031895  -0.026720  -0.027092
     4  H    0.014034   0.414804  -0.031895   0.624527  -0.026413  -0.026901
     5  H    0.004922   0.407509  -0.026720  -0.026413   0.631236  -0.022352
     6  O    0.000197   0.281539  -0.027092  -0.026901  -0.022352   7.871556
     7  H   -0.000037  -0.048400  -0.005028  -0.005077   0.007479   0.354170
               7
     1  Cl  -0.000037
     2  C   -0.048400
     3  H   -0.005028
     4  H   -0.005077
     5  H    0.007479
     6  O    0.354170
     7  H    0.550808
 Mulliken charges:
               1
     1  Cl  -0.958926
     2  C    0.147778
     3  H    0.034924
     4  H    0.036919
     5  H    0.024338
     6  O   -0.431118
     7  H    0.146085
 Sum of Mulliken charges =  -1.00000
 Mulliken charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.958926
     2  C    0.243959
     6  O   -0.285033
 APT charges:
               1
     1  Cl  -0.983053
     2  C    0.462226
     3  H   -0.023472
     4  H   -0.020176
     5  H   -0.021711
     6  O   -0.626891
     7  H    0.213078
 Sum of APT charges =  -1.00000
 APT charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.983053
     2  C    0.396867
     6  O   -0.413813
 Electronic spatial extent (au):  <R**2>=            634.9665
 Charge=             -1.0000 electrons
 Dipole moment (field-independent basis, Debye):
    X=              6.7372    Y=             -0.8465    Z=             -0.1299  Tot=              6.7914
 Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -54.2556   YY=            -27.1846   ZZ=            -29.0055
   XY=             -5.9179   XZ=              0.6659   YZ=              0.1191
 Traceless Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -17.4404   YY=              9.6307   ZZ=              7.8097
   XY=             -5.9179   XZ=              0.6659   YZ=              0.1191
 Octapole moment (field-independent basis, Debye-Ang**2):
  XXX=             15.3322  YYY=             -0.5575  ZZZ=             -0.1536  XYY=              7.7932
  XXY=            -13.3259  XXZ=             -0.0238  XZZ=              2.0778  YZZ=             -0.4665
  YYZ=             -0.2091  XYZ=              0.2382
 Hexadecapole moment (field-independent basis, Debye-Ang**3):
 XXXX=           -878.0262 YYYY=            -40.4312 ZZZZ=            -37.3794 XXXY=            -71.3857
 XXXZ=             11.8574 YYYX=            -22.3173 YYYZ=              0.4701 ZZZX=              8.3759
 ZZZY=              0.4716 XXYY=           -117.8218 XXZZ=           -132.4531 YYZZ=            -13.6202
 XXYZ=              1.1724 YYXZ=              2.4283 ZZXY=             -6.8884
 N-N= 8.178083792265D+01 E-N=-1.538476509338D+03  KE= 5.744752710036D+02
  Exact polarizability:  32.265  -0.789  22.515  -0.315  -0.011  20.058
 Approx polarizability:  23.862  -0.331  20.318  -0.160  -0.020  18.080
 Calling FoFJK, ICntrl=  10100127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000251729   -0.000177746    0.000015759
      2        6           0.000127639    0.000331421   -0.000017785
      3        1           0.000000116    0.000040745   -0.000008167
      4        1          -0.000006960    0.000039131   -0.000006707
      5        1           0.000045197    0.000027572   -0.000003057
      6        8           0.000100943   -0.000097208    0.000024001
      7        1          -0.000015206   -0.000163916   -0.000004045
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000331421 RMS     0.000114466
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
          ******** Start new reaction path calculation ********
 WARNING: NO IMAGINARY FREQUENCIES AT TS!
 Supplied step size of   0.0500 bohr.
    Integration on MW PES will use step size of   0.0797 sqrt(amu)*bohr.
 Point Number:   0          Path Number:   1
 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.932348   -0.125249    0.044475
      2          6           0        1.382595    0.232133   -0.027283
      3          1           0        0.928443   -0.195503    0.881303
      4          1           0        0.871209   -0.229259   -0.887372
      5          1           0        1.152171    1.306393   -0.040598
      6          8           0        2.814312    0.097959   -0.069981
      7          1           0        2.968016   -0.854481   -0.061001
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    3.334924   0.000000
     3  H    2.981500   1.102114   0.000000
     4  H    2.956195   1.101884   1.769923   0.000000
     5  H    3.401630   1.098775   1.776414   1.776004   0.000000
     6  O    4.753284   1.438624   2.132502   2.133272   2.055210
     7  H    4.955449   1.922350   2.341378   2.338887   2.822603
                    6          7
     6  O    0.000000
     7  H    0.964805   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):    108.3290270      1.7155054      1.7067770
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        81.7578883541 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.62D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-6166.chk"
 B after Tr=    -0.000364    0.000590    0.000138
         Rot=    1.000000    0.000088    0.000003    0.000020 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410271.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.600035271     A.U. after    9 cycles
            NFock=  9  Conv=0.31D-08     -V/T= 2.0002
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.1817995880D-01 E2=     -0.5886007795D-01
     alpha-beta  T2 =       0.1096854829D+00 E2=     -0.3587301065D+00
     beta-beta   T2 =       0.1817995880D-01 E2=     -0.5886007795D-01
 ANorm=    0.1070535100D+01
 E2 =    -0.4764502624D+00 EUMP2 =    -0.57507648553346D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351586.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=3.55D-03 Max=3.14D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=8.28D-04 Max=6.64D-03 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=1.99D-04 Max=1.43D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.45D-05 Max=6.78D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=1.79D-05 Max=1.77D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=4.10D-06 Max=3.73D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=9.48D-07 Max=7.84D-06 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.73D-07 Max=1.38D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=3.04D-08 Max=2.34D-07 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.85D-09 Max=4.22D-08 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=9.99D-10 Max=1.03D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.64D-10 Max=1.36D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     0 RMS=3.11D-11 Max=2.82D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    12 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Symmetrizing basis deriv contribution to polar:
 IMax=3 JMax=2 DiffMx= 0.00D+00
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000248751   -0.000171365    0.000016210
      2        6           0.000136592    0.000333672   -0.000021923
      3        1           0.000008461    0.000042692   -0.000013530
      4        1           0.000001530    0.000044687   -0.000000180
      5        1           0.000052299   -0.000004545   -0.000003524
      6        8           0.000073175   -0.000117396    0.000027377
      7        1          -0.000023305   -0.000127746   -0.000004429
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000333672 RMS     0.000112460
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  1 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000006698 at pt    28
 Maximum DWI gradient std dev =  1.766361285 at pt     2
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.932530   -0.125254    0.044511
      2          6           0        1.382805    0.232108   -0.027481
      3          1           0        0.928494   -0.195711    0.880913
      4          1           0        0.871658   -0.229149   -0.887781
      5          1           0        1.152323    1.306300   -0.040668
      6          8           0        2.814506    0.098007   -0.069849
      7          1           0        2.968107   -0.854560   -0.061112
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    3.335317   0.000000
     3  H    2.981608   1.102092   0.000000
     4  H    2.956930   1.101882   1.769923   0.000000
     5  H    3.401900   1.098720   1.776358   1.775944   0.000000
     6  O    4.753659   1.438591   2.132431   2.133237   2.055158
     7  H    4.955733   1.922280   2.341264   2.338722   2.822553
                    6          7
     6  O    0.000000
     7  H    0.964911   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):    108.3357097      1.7152087      1.7064844
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        81.7540086832 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.62D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-6166.chk"
 B after Tr=     0.000025   -0.000007   -0.000027
         Rot=    1.000000   -0.000027   -0.000002    0.000001 Ang=  -0.00 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410271.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.600033726     A.U. after    7 cycles
            NFock=  7  Conv=0.48D-08     -V/T= 2.0002
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.1818001865D-01 E2=     -0.5886020329D-01
     alpha-beta  T2 =       0.1096861908D+00 E2=     -0.3587315762D+00
     beta-beta   T2 =       0.1818001865D-01 E2=     -0.5886020329D-01
 ANorm=    0.1070535487D+01
 E2 =    -0.4764519828D+00 EUMP2 =    -0.57507648570854D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351586.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=3.55D-03 Max=3.14D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=8.28D-04 Max=6.64D-03 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=1.99D-04 Max=1.43D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.45D-05 Max=6.79D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=1.79D-05 Max=1.77D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=4.10D-06 Max=3.73D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=9.48D-07 Max=7.84D-06 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.73D-07 Max=1.38D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=3.04D-08 Max=2.34D-07 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.85D-09 Max=4.22D-08 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=9.99D-10 Max=1.03D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.65D-10 Max=1.35D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     0 RMS=3.11D-11 Max=2.82D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    12 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Symmetrizing basis deriv contribution to polar:
 IMax=3 JMax=2 DiffMx= 0.00D+00
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000242639   -0.000171167    0.000015526
      2        6           0.000126812    0.000316718   -0.000023648
      3        1          -0.000003984    0.000038306   -0.000003970
      4        1          -0.000001474    0.000040917   -0.000003210
      5        1           0.000043838    0.000033574   -0.000001753
      6        8           0.000101095   -0.000237429    0.000021382
      7        1          -0.000023649   -0.000020920   -0.000004328
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000316718 RMS     0.000115401
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =           0.0000000515
 Magnitude of corrector gradient =     0.0004857291
 Magnitude of analytic gradient =      0.0005288360
 Magnitude of difference =             0.0001212780
 Angle between gradients (degrees)=   12.8419
 Pt  1 Step number   2 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000006713 at pt    28
 Maximum DWI gradient std dev =  1.769554369 at pt     2
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.932645   -0.125255    0.044535
      2          6           0        1.382927    0.232077   -0.027610
      3          1           0        0.928483   -0.195869    0.880657
      4          1           0        0.871946   -0.229096   -0.888056
      5          1           0        1.152401    1.306259   -0.040703
      6          8           0        2.814634    0.098039   -0.069766
      7          1           0        2.968263   -0.854525   -0.061161
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    3.335553   0.000000
     3  H    2.981633   1.102091   0.000000
     4  H    2.957404   1.101886   1.769928   0.000000
     5  H    3.402060   1.098718   1.776354   1.775945   0.000000
     6  O    4.753902   1.438585   2.132428   2.133226   2.055154
     7  H    4.955997   1.922269   2.341272   2.338688   2.822546
                    6          7
     6  O    0.000000
     7  H    0.964912   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):    108.3431815      1.7150172      1.7062966
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        81.7514532881 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.62D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-6166.chk"
 B after Tr=     0.000017   -0.000003   -0.000017
         Rot=    1.000000   -0.000017   -0.000001    0.000000 Ang=  -0.00 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410271.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.600034880     A.U. after    6 cycles
            NFock=  6  Conv=0.51D-08     -V/T= 2.0002
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.1817990059D-01 E2=     -0.5885997776D-01
     alpha-beta  T2 =       0.1096858293D+00 E2=     -0.3587309485D+00
     beta-beta   T2 =       0.1817990059D-01 E2=     -0.5885997776D-01
 ANorm=    0.1070535207D+01
 E2 =    -0.4764509040D+00 EUMP2 =    -0.57507648578362D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351586.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=3.55D-03 Max=3.14D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=8.28D-04 Max=6.64D-03 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=1.99D-04 Max=1.43D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.45D-05 Max=6.79D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=1.79D-05 Max=1.77D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=4.10D-06 Max=3.73D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=9.48D-07 Max=7.84D-06 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.73D-07 Max=1.38D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=3.04D-08 Max=2.34D-07 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.85D-09 Max=4.22D-08 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=9.99D-10 Max=1.03D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.65D-10 Max=1.35D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     0 RMS=3.11D-11 Max=2.82D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    12 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Symmetrizing basis deriv contribution to polar:
 IMax=3 JMax=2 DiffMx= 0.00D+00
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000238842   -0.000171068    0.000015167
      2        6           0.000122563    0.000317150   -0.000022563
      3        1          -0.000004999    0.000038302   -0.000003981
      4        1          -0.000001797    0.000041142   -0.000003084
      5        1           0.000043514    0.000034360   -0.000001448
      6        8           0.000101883   -0.000239702    0.000019420
      7        1          -0.000022322   -0.000020184   -0.000003511
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000317150 RMS     0.000115073
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =           0.0000000222
 Magnitude of corrector gradient =     0.0004999828
 Magnitude of analytic gradient =      0.0005273291
 Magnitude of difference =             0.0000782583
 Angle between gradients (degrees)=    8.1889
 Pt  1 Step number   3 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000006724 at pt    28
 Maximum DWI gradient std dev =  1.773453261 at pt     2
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   1          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.07933
   NET REACTION COORDINATE UP TO THIS POINT =    0.07933
  # OF POINTS ALONG THE PATH =   1
  # OF STEPS =   3

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.934197   -0.126618    0.044599
      2          6           0        1.385395    0.239544   -0.027835
      3          1           0        0.927044   -0.184996    0.880084
      4          1           0        0.870672   -0.217584   -0.888238
      5          1           0        1.164235    1.315883   -0.040893
      6          8           0        2.816018    0.093754   -0.069653
      7          1           0        2.961653   -0.860149   -0.061525
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    3.340510   0.000000
     3  H    2.981299   1.102105   0.000000
     4  H    2.957322   1.101907   1.769520   0.000000
     5  H    3.418830   1.098904   1.776822   1.776428   0.000000
     6  O    4.756696   1.438641   2.132586   2.133397   2.054949
     7  H    4.951634   1.922251   2.341387   2.338492   2.822456
                    6          7
     6  O    0.000000
     7  H    0.964990   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):    106.9887869      1.7126563      1.7036114
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        81.7058137771 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.62D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-6166.chk"
 B after Tr=     0.000108    0.000750   -0.000035
         Rot=    1.000000   -0.000064   -0.000006    0.000022 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410271.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.600053936     A.U. after    9 cycles
            NFock=  9  Conv=0.29D-08     -V/T= 2.0002
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.1817917616D-01 E2=     -0.5885753430D-01
     alpha-beta  T2 =       0.1096881128D+00 E2=     -0.3587286966D+00
     beta-beta   T2 =       0.1817917616D-01 E2=     -0.5885753430D-01
 ANorm=    0.1070535597D+01
 E2 =    -0.4764437652D+00 EUMP2 =    -0.57507649770084D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351567.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=3.55D-03 Max=3.14D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=8.28D-04 Max=6.64D-03 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=2.00D-04 Max=1.43D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.46D-05 Max=6.79D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=1.79D-05 Max=1.77D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=4.10D-06 Max=3.76D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=9.49D-07 Max=7.86D-06 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.73D-07 Max=1.38D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=3.04D-08 Max=2.34D-07 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.86D-09 Max=4.21D-08 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=1.00D-09 Max=1.03D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.65D-10 Max=1.36D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     0 RMS=3.12D-11 Max=2.81D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    12 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Symmetrizing basis deriv contribution to polar:
 IMax=3 JMax=2 DiffMx= 0.00D+00
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000205332   -0.000164324    0.000013140
      2        6           0.000130882    0.000336754   -0.000021378
      3        1           0.000007071    0.000045345   -0.000012877
      4        1           0.000012330    0.000049477    0.000005846
      5        1           0.000057782   -0.000025104    0.000000584
      6        8           0.000035410   -0.000291275    0.000015809
      7        1          -0.000038143    0.000049127   -0.000001123
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000336754 RMS     0.000119407
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  2 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000033 at pt    63
 Maximum DWI gradient std dev =  0.181762528 at pt   115
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.934298   -0.126614    0.044621
      2          6           0        1.385544    0.239490   -0.027957
      3          1           0        0.927098   -0.185172    0.879828
      4          1           0        0.871032   -0.217524   -0.888518
      5          1           0        1.164335    1.315732   -0.040898
      6          8           0        2.816086    0.093805   -0.069577
      7          1           0        2.961792   -0.860016   -0.061521
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    3.340756   0.000000
     3  H    2.981373   1.102082   0.000000
     4  H    2.957852   1.101885   1.769531   0.000000
     5  H    3.418948   1.098817   1.776720   1.776334   0.000000
     6  O    4.756866   1.438543   2.132481   2.133267   2.054802
     7  H    4.951852   1.922133   2.341267   2.338376   2.822261
                    6          7
     6  O    0.000000
     7  H    0.964920   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):    107.0101781      1.7125011      1.7034632
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        81.7056915403 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.62D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-6166.chk"
 B after Tr=     0.000021    0.000000   -0.000015
         Rot=    1.000000   -0.000017   -0.000001   -0.000001 Ang=  -0.00 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410271.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.600062727     A.U. after    6 cycles
            NFock=  6  Conv=0.80D-08     -V/T= 2.0002
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.1817833802D-01 E2=     -0.5885675956D-01
     alpha-beta  T2 =       0.1096817301D+00 E2=     -0.3587214862D+00
     beta-beta   T2 =       0.1817833802D-01 E2=     -0.5885675956D-01
 ANorm=    0.1070531833D+01
 E2 =    -0.4764350053D+00 EUMP2 =    -0.57507649773247D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351567.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=3.55D-03 Max=3.13D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=8.28D-04 Max=6.64D-03 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=1.99D-04 Max=1.43D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.45D-05 Max=6.78D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=1.79D-05 Max=1.77D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=4.10D-06 Max=3.76D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=9.49D-07 Max=7.86D-06 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=1.73D-07 Max=1.38D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=3.04D-08 Max=2.34D-07 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=4.86D-09 Max=4.21D-08 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=9.99D-10 Max=1.03D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.65D-10 Max=1.36D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     0 RMS=3.11D-11 Max=2.81D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    12 iterations.
 End of Minotr F.D. properties file   721 does not exist.
 End of Minotr F.D. properties file   722 does not exist.
 End of Minotr F.D. properties file   788 does not exist.
 Symmetrizing basis deriv contribution to polar:
 IMax=3 JMax=2 DiffMx= 0.00D+00
 Calling FoFJK, ICntrl=  10002127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17          -0.000202045   -0.000164089    0.000012900
      2        6           0.000108909    0.000307551   -0.000018896
      3        1          -0.000005543    0.000036367   -0.000003937
      4        1          -0.000002623    0.000040112   -0.000003042
      5        1           0.000041885    0.000032764   -0.000000189
      6        8           0.000082406   -0.000233290    0.000013488
      7        1          -0.000022987   -0.000019415   -0.000000324
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000307551 RMS     0.000107536
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =           0.0000000012
 Magnitude of corrector gradient =     0.0004925550
 Magnitude of analytic gradient =      0.0004927914
 Magnitude of difference =             0.0000020751
 Angle between gradients (degrees)=    0.2398
 Pt  2 Step number   2 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000035 at pt    63
 Maximum DWI gradient std dev =  0.181191110 at pt   153
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   2          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.07970
   NET REACTION COORDINATE UP TO THIS POINT =    0.15903
  # OF POINTS ALONG THE PATH =   2
  # OF STEPS =   2

 PES minimum detected on this side of the pathway.
    Magnitude of the gradient =      0.0001461
 Calculation of REVERSE path complete.
 Reaction path calculation complete.
 
 Energies reported relative to the TS energy of        -575.076474
 --------------------------------------------------------------------------
    Summary of reaction path following
 --------------------------------------------------------------------------
                        Energy    RxCoord
   1                   -0.00002  -0.15903
   2                   -0.00001  -0.07933
   3                    0.00000   0.00000
 --------------------------------------------------------------------------
 
 Total number of points:                    2
 Total number of gradient calculations:     6
 Total number of Hessian calculations:      1
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.934298   -0.126614    0.044621
      2          6           0        1.385544    0.239490   -0.027957
      3          1           0        0.927098   -0.185172    0.879828
      4          1           0        0.871032   -0.217524   -0.888518
      5          1           0        1.164335    1.315732   -0.040898
      6          8           0        2.816086    0.093805   -0.069577
      7          1           0        2.961792   -0.860016   -0.061521
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    3.340756   0.000000
     3  H    2.981373   1.102082   0.000000
     4  H    2.957852   1.101885   1.769531   0.000000
     5  H    3.418948   1.098817   1.776720   1.776334   0.000000
     6  O    4.756866   1.438543   2.132481   2.133267   2.054802
     7  H    4.951852   1.922133   2.341267   2.338376   2.822261
                    6          7
     6  O    0.000000
     7  H    0.964920   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):    107.0101781      1.7125011      1.7034632

 **********************************************************************

            Population analysis using the SCF density.

 **********************************************************************

 Alpha  occ. eigenvalues -- -104.47773 -20.41902 -11.11989 -10.19896  -7.66525
 Alpha  occ. eigenvalues --   -7.66517  -7.66515  -1.21164  -0.76340  -0.71184
 Alpha  occ. eigenvalues --   -0.53830  -0.45866  -0.43734  -0.35395  -0.30137
 Alpha  occ. eigenvalues --   -0.13189  -0.13160  -0.13153
 Alpha virt. eigenvalues --    0.31306   0.37324   0.42728   0.43585   0.52844
 Alpha virt. eigenvalues --    0.78265   0.78962   0.86961   0.94196   1.00599
 Alpha virt. eigenvalues --    1.03414   1.04861   1.07122   1.08847   1.09004
 Alpha virt. eigenvalues --    1.21172   1.27874   1.29214   1.29909   1.32504
 Alpha virt. eigenvalues --    1.32514   1.33006   1.33750   1.38577   1.45906
 Alpha virt. eigenvalues --    1.47018   1.57097   1.70941   1.79393   1.84072
 Alpha virt. eigenvalues --    2.03050   2.07841   2.09267   2.11199   2.18633
 Alpha virt. eigenvalues --    2.28144   2.46641   2.50596   2.55973   2.62964
 Alpha virt. eigenvalues --    2.89975   2.90243   2.92273   3.44007   3.50535
 Alpha virt. eigenvalues --    3.58048   3.71304   4.20865
          Condensed to atoms (all electrons):
               1          2          3          4          5          6
     1  Cl  17.938338  -0.011905   0.013579   0.014272   0.004560   0.000192
     2  C   -0.011905   4.394904   0.414540   0.414913   0.406910   0.281662
     3  H    0.013579   0.414540   0.626830  -0.031776  -0.026812  -0.027026
     4  H    0.014272   0.414913  -0.031776   0.623089  -0.026456  -0.026801
     5  H    0.004560   0.406910  -0.026812  -0.026456   0.633946  -0.022461
     6  O    0.000192   0.281662  -0.027026  -0.026801  -0.022461   7.871393
     7  H   -0.000035  -0.048492  -0.004991  -0.005070   0.007525   0.354282
               7
     1  Cl  -0.000035
     2  C   -0.048492
     3  H   -0.004991
     4  H   -0.005070
     5  H    0.007525
     6  O    0.354282
     7  H    0.550278
 Mulliken charges:
               1
     1  Cl  -0.959001
     2  C    0.147468
     3  H    0.035655
     4  H    0.037829
     5  H    0.022788
     6  O   -0.431242
     7  H    0.146503
 Sum of Mulliken charges =  -1.00000
 Mulliken charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.959001
     2  C    0.243740
     6  O   -0.284739
 APT charges:
               1
     1  Cl  -0.941561
     2  C   -0.331071
     3  H    0.080067
     4  H    0.075680
     5  H    0.188425
     6  O   -0.412637
     7  H    0.341097
 Sum of APT charges =  -1.00000
 APT charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.941561
     2  C    0.013100
     6  O   -0.071540
 Electronic spatial extent (au):  <R**2>=            636.4534
 Charge=             -1.0000 electrons
 Dipole moment (field-independent basis, Debye):
    X=              6.7299    Y=             -0.8179    Z=             -0.1312  Tot=              6.7807
 Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -54.4529   YY=            -27.1437   ZZ=            -29.0044
   XY=             -5.8762   XZ=              0.6645   YZ=              0.1206
 Traceless Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -17.5859   YY=              9.7233   ZZ=              7.8626
   XY=             -5.8762   XZ=              0.6645   YZ=              0.1206
 Octapole moment (field-independent basis, Debye-Ang**2):
  XXX=             14.7466  YYY=             -0.6984  ZZZ=             -0.1560  XYY=              7.9409
  XXY=            -13.0507  XXZ=             -0.0293  XZZ=              2.0758  YZZ=             -0.4900
  YYZ=             -0.2151  XYZ=              0.2381
 Hexadecapole moment (field-independent basis, Debye-Ang**3):
 XXXX=           -883.1413 YYYY=            -40.7615 ZZZZ=            -37.3680 XXXY=            -70.9696
 XXXZ=             11.8868 YYYX=            -22.7870 YYYZ=              0.4757 ZZZX=              8.3911
 ZZZY=              0.4746 XXYY=           -117.8444 XXZZ=           -132.7345 YYZZ=            -13.7095
 XXYZ=              1.1765 YYXZ=              2.4196 ZZXY=             -7.0075
 N-N= 8.170569154026D+01 E-N=-1.538320824147D+03  KE= 5.744747204375D+02
  Exact polarizability:   0.000   0.000   0.000   0.000   0.000   0.000
 Approx polarizability:  23.823  -0.302  20.326  -0.163  -0.017  18.085

 This type of calculation cannot be archived.


 WE ARE REACHING THE STAGE WHERE THE PROBLEMS WE MUST SOLVE ARE 
 GOING TO BECOME INSOLUBLE WITHOUT COMPUTERS.
 I DO NOT FEAR COMPUTERS.  I FEAR THE LACK OF THEM.

                                   -- ISSAC ASIMOV
 Job cpu time:       0 days  0 hours  1 minutes  4.1 seconds.
 File lengths (MBytes):  RWF=    214 Int=      0 D2E=      0 Chk=      2 Scr=      1
 Normal termination of Gaussian 09 at Tue Feb 26 15:20:54 2019.
