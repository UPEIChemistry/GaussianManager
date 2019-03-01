 Entering Gaussian System, Link 0=g09
 Initial command:
 /opt/software/gaussian/g09.e01/l1.exe "/localscratch/rjackson.12067818.0/Gau-8783.inp" -scrdir="/localscratch/rjackson.12067818.0/"
 Entering Link 1 = /opt/software/gaussian/g09.e01/l1.exe PID=      8784.
  
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
 # MP2/cc-pVDZ irc(forward, calcfc, maxpoints=64, stepsize=5, tight) in
 tegral(grid=superfine) scf(maxcyc=256)
 ----------------------------------------------------------------------
 1/7=10,10=4,18=10,22=1,38=1,39=5,42=64,44=3/1,23;
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
 1/7=10,10=4,18=10,22=1,39=5,42=64,44=3/23(2);
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
 1/7=10,18=10,22=1,39=5,42=64,44=3/23(-12);
 2/29=1/2;
 6/7=2,8=2,9=2,10=2/1;
 99/5=20/99;
 ------------------------
 OH-chloroform_ts_product
 ------------------------
 Symbolic Z-matrix:
 Charge = -1 Multiplicity = 1
 Cl                   -1.45503  -0.16549  -0.10232 
 C                     0.17411   0.46701   0.64554 
 H                     0.10062   0.03336   1.67441 
 H                     1.79823   0.19658  -0.147 
 H                    -0.08773   1.54073   0.81415 
 O                     2.76046  -0.04171  -0.4071 
 H                     2.77723  -0.92504  -0.01653 
 
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 ------------------------------------------------------------------------
 INPUT DATA FOR L123
 ------------------------------------------------------------------------
 GENERAL PARAMETERS:
 Rxn path following direction = Forward
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
      1         17           0       -1.455030   -0.165494   -0.102319
      2          6           0        0.174112    0.467009    0.645538
      3          1           0        0.100619    0.033357    1.674411
      4          1           0        1.798229    0.196577   -0.146999
      5          1           0       -0.087727    1.540732    0.814153
      6          8           0        2.760464   -0.041705   -0.407097
      7          1           0        2.777231   -0.925041   -0.016532
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.900909   0.000000
     3  H    2.369885   1.118944   0.000000
     4  H    3.273650   1.827294   2.495206   0.000000
     5  H    2.370790   1.117977   1.745766   2.507468   0.000000
     6  O    4.228310   2.838318   3.378326   1.024854   3.479619
     7  H    4.300733   3.025288   3.307879   1.494488   3.870150
                    6          7
     6  O    0.000000
     7  H    0.965973   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     28.6732148      2.4004431      2.2625989
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.6195113814 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
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
 Keep R1 ints in memory in canonical form, NReq=3410978.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507696540     A.U. after   13 cycles
            NFock= 13  Conv=0.37D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Disk-based method using ON**2 memory for 11 occupieds at a time.
 Permanent disk used for amplitudes=      919080 words.
 Estimated scratch disk usage=     7102772 words.
 Actual    scratch disk usage=     7102772 words.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 (rs|ai) integrals will be sorted in core.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036676775D-01 E2=     -0.6194914660D-01
     alpha-beta  T2 =       0.1203124210D+00 E2=     -0.3697432868D+00
     beta-beta   T2 =       0.2036676775D-01 E2=     -0.6194914660D-01
 ANorm=    0.1077518425D+01
 E2 =    -0.4936415800D+00 EUMP2 =    -0.57500133812008D+03
 G2DrvN: will do     8 centers at a time, making    1 passes.
 Calling FoFCou, ICntrl=  3107 FMM=F I1Cent=   0 AccDes= 0.00D+00.
 End of G2Drv F.D. properties file   721 does not exist.
 End of G2Drv F.D. properties file   722 does not exist.
 End of G2Drv F.D. properties file   788 does not exist.
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3351303.
          There are    24 degrees of freedom in the 1st order CPHF.  IDoFFX=6 NUNeed=    24.
     21 vectors produced by pass  0 Test12= 3.60D-15 4.17D-09 XBig12= 1.01D+01 1.28D+00.
 AX will form    21 AO Fock derivatives at one time.
     21 vectors produced by pass  1 Test12= 3.60D-15 4.17D-09 XBig12= 7.28D-01 3.06D-01.
     21 vectors produced by pass  2 Test12= 3.60D-15 4.17D-09 XBig12= 2.85D-02 4.05D-02.
     21 vectors produced by pass  3 Test12= 3.60D-15 4.17D-09 XBig12= 2.34D-04 3.67D-03.
     21 vectors produced by pass  4 Test12= 3.60D-15 4.17D-09 XBig12= 1.61D-06 2.22D-04.
     21 vectors produced by pass  5 Test12= 3.60D-15 4.17D-09 XBig12= 7.32D-09 1.56D-05.
     14 vectors produced by pass  6 Test12= 3.60D-15 4.17D-09 XBig12= 4.57D-11 1.81D-06.
      3 vectors produced by pass  7 Test12= 3.60D-15 4.17D-09 XBig12= 2.16D-13 9.92D-08.
      1 vectors produced by pass  8 Test12= 3.60D-15 4.17D-09 XBig12= 1.39D-15 7.00D-09.
 InvSVY:  IOpt=1 It=  1 EMax= 1.78D-15
 Solved reduced A of dimension   144 with    24 vectors.
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
 ModeAB=           2 MOrb=            18 LenV=      33289318
 LASXX=      2037645 LTotXX=     2037645 LenRXX=     2037645
 LTotAB=     2140641 MaxLAS=     2869020 LenRXY=     2869020
 NonZer=     4075290 LenScr=     6875136 LnRSAI=           0
 LnScr1=           0 LExtra=           0 Total=     11781801
 MaxDsk=          -1 SrtSym=           F ITran=            4
 JobTyp=0 Pass  1:  I=   1 to  18.
 (rs|ai) integrals will be sorted in core.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036676775D-01 E2=     -0.6194914660D-01
     alpha-beta  T2 =       0.1203124210D+00 E2=     -0.3697432868D+00
     beta-beta   T2 =       0.2036676775D-01 E2=     -0.6194914660D-01
 ANorm=    0.1523841171D+01
 E2 =    -0.4936415800D+00 EUMP2 =    -0.57500133812008D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.49D-03 Max=4.87D-02 NDo=     1
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.36D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.15D-04 Max=4.90D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.25D-05 Max=5.84D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.50D-05 Max=2.14D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.71D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.72D-06 Max=2.04D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.01D-07 Max=6.93D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.25D-07 Max=1.16D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.88D-08 Max=3.57D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.43D-09 Max=6.31D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.52D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.29D-10 Max=1.40D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.36D-11 Max=3.24D-10 NDo=     1
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

 Alpha  occ. eigenvalues -- -104.58691 -20.32571 -11.02536 -10.31216  -7.77946
 Alpha  occ. eigenvalues --   -7.77717  -7.77701  -1.10392  -0.86296  -0.63242
 Alpha  occ. eigenvalues --   -0.45127  -0.36837  -0.33682  -0.28759  -0.27353
 Alpha  occ. eigenvalues --   -0.24289  -0.20757  -0.10646
 Alpha virt. eigenvalues --    0.36036   0.40130   0.43158   0.44742   0.58625
 Alpha virt. eigenvalues --    0.80972   0.86168   0.92537   0.93014   0.98394
 Alpha virt. eigenvalues --    0.99298   1.02144   1.05785   1.08239   1.08707
 Alpha virt. eigenvalues --    1.16981   1.17935   1.20772   1.23098   1.24847
 Alpha virt. eigenvalues --    1.39047   1.42314   1.45117   1.51542   1.55568
 Alpha virt. eigenvalues --    1.60035   1.62153   1.66903   1.75226   1.85382
 Alpha virt. eigenvalues --    1.93767   1.99539   2.16729   2.17984   2.22311
 Alpha virt. eigenvalues --    2.23969   2.35020   2.36272   2.56424   2.65662
 Alpha virt. eigenvalues --    2.82468   2.96079   2.98809   3.49213   3.52506
 Alpha virt. eigenvalues --    3.70124   4.03741   4.38893
          Condensed to atoms (all electrons):
               1          2          3          4          5          6
     1  Cl  17.430466   0.119365  -0.050985  -0.001670  -0.049924   0.000692
     2  C    0.119365   5.528543   0.373174   0.060472   0.375556  -0.060054
     3  H   -0.050985   0.373174   0.750517  -0.003129  -0.047452   0.001275
     4  H   -0.001670   0.060472  -0.003129   0.373605  -0.002978   0.366769
     5  H   -0.049924   0.375556  -0.047452  -0.002978   0.740869   0.001130
     6  O    0.000692  -0.060054   0.001275   0.366769   0.001130   7.801155
     7  H   -0.000505   0.018757  -0.000558  -0.057688  -0.000127   0.344964
               7
     1  Cl  -0.000505
     2  C    0.018757
     3  H   -0.000558
     4  H   -0.057688
     5  H   -0.000127
     6  O    0.344964
     7  H    0.600683
 Mulliken charges:
               1
     1  Cl  -0.447438
     2  C   -0.415812
     3  H   -0.022841
     4  H    0.264621
     5  H   -0.017073
     6  O   -0.455931
     7  H    0.094474
 Sum of Mulliken charges =  -1.00000
 Mulliken charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.447438
     2  C   -0.455726
     6  O   -0.096836
 APT charges:
               1
     1  Cl  -0.634257
     2  C    0.060796
     3  H   -0.162525
     4  H    0.567456
     5  H   -0.164606
     6  O   -0.836059
     7  H    0.169194
 Sum of APT charges =  -1.00000
 APT charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.634257
     2  C   -0.266334
     6  O   -0.099409
 Electronic spatial extent (au):  <R**2>=            510.6688
 Charge=             -1.0000 electrons
 Dipole moment (field-independent basis, Debye):
    X=             -1.5395    Y=             -1.0744    Z=              0.9691  Tot=              2.1127
 Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -48.6578   YY=            -28.0542   ZZ=            -30.6557
   XY=             -3.7497   XZ=              3.4388   YZ=             -0.5965
 Traceless Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -12.8685   YY=              7.7350   ZZ=              5.1335
   XY=             -3.7497   XZ=              3.4388   YZ=             -0.5965
 Octapole moment (field-independent basis, Debye-Ang**2):
  XXX=            -37.0915  YYY=             -5.5271  ZZZ=             -6.9808  XYY=              3.9323
  XXY=            -10.3223  XXZ=              8.3142  XZZ=             -2.4740  YZZ=             -1.6684
  YYZ=             -2.5507  XYZ=             -0.7469
 Hexadecapole moment (field-independent basis, Debye-Ang**3):
 XXXX=           -655.6224 YYYY=            -54.8887 ZZZZ=            -73.2539 XXXY=            -31.6079
 XXXZ=             45.5852 YYYX=             -9.7521 YYYZ=            -10.3528 ZZZX=             13.9374
 ZZZY=            -11.1503 XXYY=            -84.3748 XXZZ=           -104.9999 YYZZ=            -21.6147
 XXYZ=             -4.3411 YYXZ=              4.1008 ZZXY=             -0.8669
 N-N= 8.761951138142D+01 E-N=-1.549845633233D+03  KE= 5.745063511817D+02
  Exact polarizability:  44.917   1.216  28.401   2.663   1.435  26.778
 Approx polarizability:  31.710   2.011  24.679   2.966   0.292  22.774
 Calling FoFJK, ICntrl=  10100127 FMM=F ISym2X=0 I1Cent= 0 IOpClX= 0 NMat=1 NMatS=1 NMatT=0.
 -------------------------------------------------------------------
 Center     Atomic                   Forces (Hartrees/Bohr)
 Number     Number              X              Y              Z
 -------------------------------------------------------------------
      1       17           0.000444529   -0.000130921   -0.000153669
      2        6          -0.000074832    0.000209081    0.000226190
      3        1          -0.000016217    0.000018688    0.000016013
      4        1           0.000001270    0.000011288    0.000012986
      5        1          -0.000017534    0.000010463    0.000008091
      6        8          -0.000291473    0.000008063   -0.000070971
      7        1          -0.000045744   -0.000126662   -0.000038640
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000444529 RMS     0.000146413
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
          ******** Start new reaction path calculation ********
 WARNING: NO IMAGINARY FREQUENCIES AT TS!
 Supplied step size of   0.0500 bohr.
    Integration on MW PES will use step size of   0.0659 sqrt(amu)*bohr.
 Point Number:   0          Path Number:   1
 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.452756   -0.166266   -0.103015
      2          6           0        0.173247    0.470175    0.648524
      3          1           0        0.097916    0.037386    1.677602
      4          1           0        1.797709    0.198917   -0.143111
      5          1           0       -0.091143    1.543566    0.815284
      6          8           0        2.758109   -0.042507   -0.407128
      7          1           0        2.766276   -0.934545   -0.035873
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.900988   0.000000
     3  H    2.369948   1.118920   0.000000
     4  H    3.271160   1.827332   2.496073   0.000000
     5  H    2.370820   1.117980   1.745827   2.508857   0.000000
     6  O    4.223646   2.838795   3.380697   1.024871   3.482551
     7  H    4.288938   3.027447   3.316744   1.494777   3.876899
                    6          7
     6  O    0.000000
     7  H    0.966245   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     28.4547449      2.4062952      2.2662424
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.6384466737 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000175    0.000014   -0.000273
         Rot=    1.000000   -0.000276   -0.000087    0.000074 Ang=  -0.03 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410978.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507713479     A.U. after   11 cycles
            NFock= 11  Conv=0.56D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036580037D-01 E2=     -0.6194706287D-01
     alpha-beta  T2 =       0.1203128007D+00 E2=     -0.3697418701D+00
     beta-beta   T2 =       0.2036580037D-01 E2=     -0.6194706287D-01
 ANorm=    0.1077517704D+01
 E2 =    -0.4936359959D+00 EUMP2 =    -0.57500134947499D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353197.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.49D-03 Max=4.85D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.36D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.15D-04 Max=4.89D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.24D-05 Max=5.85D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.15D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.76D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.72D-06 Max=2.06D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.05D-07 Max=6.97D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.26D-07 Max=1.17D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.89D-08 Max=3.59D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.45D-09 Max=6.30D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.55D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.41D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.38D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000439890   -0.000126910   -0.000150657
      2        6          -0.000075010    0.000208968    0.000222751
      3        1          -0.000016085    0.000017728    0.000014224
      4        1           0.000007495   -0.000009422    0.000019539
      5        1          -0.000017457    0.000007869    0.000007728
      6        8          -0.000277326   -0.000230913    0.000025869
      7        1          -0.000061506    0.000132680   -0.000139454
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000439890 RMS     0.000155024
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  1 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000025 at pt    13
 Maximum DWI gradient std dev =  0.405673841 at pt    10
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.452550   -0.166261   -0.103100
      2          6           0        0.173195    0.470235    0.648840
      3          1           0        0.097742    0.037265    1.677827
      4          1           0        1.797327    0.198739   -0.143235
      5          1           0       -0.091285    1.543573    0.815700
      6          8           0        2.757696   -0.042623   -0.407364
      7          1           0        2.766934   -0.933313   -0.033477
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.900944   0.000000
     3  H    2.369922   1.118916   0.000000
     4  H    3.270556   1.827265   2.496183   0.000000
     5  H    2.370816   1.117965   1.745841   2.508982   0.000000
     6  O    4.223036   2.838703   3.380793   1.024855   3.482613
     7  H    4.289203   3.027042   3.315896   1.494566   3.876272
                    6          7
     6  O    0.000000
     7  H    0.966026   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     28.4410822      2.4069207      2.2667304
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.6436147554 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000006    0.000017    0.000077
         Rot=    1.000000    0.000038    0.000013   -0.000010 Ang=   0.00 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410978.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507719963     A.U. after    8 cycles
            NFock=  8  Conv=0.74D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036527377D-01 E2=     -0.6194702742D-01
     alpha-beta  T2 =       0.1203065391D+00 E2=     -0.3697356245D+00
     beta-beta   T2 =       0.2036527377D-01 E2=     -0.6194702742D-01
 ANorm=    0.1077514309D+01
 E2 =    -0.4936296793D+00 EUMP2 =    -0.57500134964193D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353197.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.49D-03 Max=4.85D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.36D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.15D-04 Max=4.89D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.24D-05 Max=5.85D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.15D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.76D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.72D-06 Max=2.06D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.04D-07 Max=6.97D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.26D-07 Max=1.17D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.89D-08 Max=3.60D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.44D-09 Max=6.30D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.54D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.29D-10 Max=1.40D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.37D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000431338   -0.000127304   -0.000150162
      2        6          -0.000069836    0.000198216    0.000216518
      3        1          -0.000016369    0.000019210    0.000018178
      4        1          -0.000005907    0.000011736    0.000017283
      5        1          -0.000019459    0.000014055    0.000009601
      6        8          -0.000271118   -0.000039948   -0.000052911
      7        1          -0.000048648   -0.000075965   -0.000058506
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000431338 RMS     0.000139288
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000171
 Magnitude of corrector gradient =     0.0006382890
 Magnitude of analytic gradient =      0.0006382959
 Magnitude of difference =             0.0000600597
 Angle between gradients (degrees)=    5.3932
 Pt  1 Step number   2 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000014 at pt     8
 Maximum DWI gradient std dev =  0.337373176 at pt    10
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   1          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06552
   NET REACTION COORDINATE UP TO THIS POINT =    0.06552
  # OF POINTS ALONG THE PATH =   1
  # OF STEPS =   2

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.450106   -0.166988   -0.103957
      2          6           0        0.172045    0.473518    0.652429
      3          1           0        0.094502    0.041095    1.681473
      4          1           0        1.795909    0.200871   -0.139522
      5          1           0       -0.095182    1.546435    0.817650
      6          8           0        2.754398   -0.043591   -0.407818
      7          1           0        2.756910   -0.940662   -0.048534
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.900985   0.000000
     3  H    2.369994   1.118898   0.000000
     4  H    3.266986   1.827145   2.497266   0.000000
     5  H    2.370864   1.117971   1.745914   2.510566   0.000000
     6  O    4.217276   2.839027   3.383395   1.024913   3.485693
     7  H    4.277923   3.028660   3.323430   1.494958   3.882055
                    6          7
     6  O    0.000000
     7  H    0.966348   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     28.1985872      2.4139253      2.2712386
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.6685637021 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000569    0.000105   -0.000122
         Rot=    1.000000   -0.000224   -0.000061    0.000057 Ang=  -0.03 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410978.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507730554     A.U. after   11 cycles
            NFock= 11  Conv=0.46D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036482769D-01 E2=     -0.6194605488D-01
     alpha-beta  T2 =       0.1203089097D+00 E2=     -0.3697382551D+00
     beta-beta   T2 =       0.2036482769D-01 E2=     -0.6194605488D-01
 ANorm=    0.1077514995D+01
 E2 =    -0.4936303648D+00 EUMP2 =    -0.57500136091884D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353197.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.49D-03 Max=4.83D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.35D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.15D-04 Max=4.89D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.24D-05 Max=5.86D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.16D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.80D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.73D-06 Max=2.08D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.08D-07 Max=7.00D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.27D-07 Max=1.18D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.91D-08 Max=3.61D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.46D-09 Max=6.29D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.57D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.41D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.39D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000420612   -0.000122466   -0.000141425
      2        6          -0.000071213    0.000200192    0.000208584
      3        1          -0.000016578    0.000018077    0.000014488
      4        1           0.000010364   -0.000019804    0.000024205
      5        1          -0.000019104    0.000008692    0.000007672
      6        8          -0.000254249   -0.000319524    0.000062453
      7        1          -0.000069833    0.000234834   -0.000175978
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000420612 RMS     0.000163968
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  2 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000059 at pt    48
 Maximum DWI gradient std dev =  0.436894857 at pt   110
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   2          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06588
   NET REACTION COORDINATE UP TO THIS POINT =    0.13140
  # OF POINTS ALONG THE PATH =   2
  # OF STEPS =   1

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.447629   -0.167725   -0.104813
      2          6           0        0.170824    0.476888    0.656086
      3          1           0        0.091033    0.045188    1.685243
      4          1           0        1.794450    0.202848   -0.135887
      5          1           0       -0.099175    1.549396    0.819447
      6          8           0        2.750980   -0.044663   -0.408407
      7          1           0        2.747013   -0.947014   -0.062676
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901022   0.000000
     3  H    2.370045   1.118882   0.000000
     4  H    3.263337   1.827150   2.498600   0.000000
     5  H    2.370884   1.117972   1.745974   2.512304   0.000000
     6  O    4.211370   2.839430   3.386261   1.024929   3.488844
     7  H    4.266625   3.029994   3.330753   1.494965   3.887286
                    6          7
     6  O    0.000000
     7  H    0.966325   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     27.9547997      2.4211199      2.2758498
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.6958562988 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000625    0.000129   -0.000110
         Rot=    1.000000   -0.000137   -0.000062    0.000048 Ang=  -0.02 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410992.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507754558     A.U. after   11 cycles
            NFock= 11  Conv=0.27D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036326145D-01 E2=     -0.6194392533D-01
     alpha-beta  T2 =       0.1203021786D+00 E2=     -0.3697295883D+00
     beta-beta   T2 =       0.2036326145D-01 E2=     -0.6194392533D-01
 ANorm=    0.1077510418D+01
 E2 =    -0.4936174390D+00 EUMP2 =    -0.57500137199733D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353267.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.49D-03 Max=4.81D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.35D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.15D-04 Max=4.88D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.24D-05 Max=5.87D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.16D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.84D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.73D-06 Max=2.10D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.11D-07 Max=7.03D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.28D-07 Max=1.19D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.92D-08 Max=3.63D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.47D-09 Max=6.28D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.59D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.42D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.39D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000407251   -0.000119683   -0.000134029
      2        6          -0.000071612    0.000196714    0.000201349
      3        1          -0.000015331    0.000016947    0.000012064
      4        1           0.000011540   -0.000019252    0.000021669
      5        1          -0.000016581    0.000006989    0.000005592
      6        8          -0.000248839   -0.000295923    0.000058558
      7        1          -0.000066429    0.000214210   -0.000165203
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000407251 RMS     0.000156603
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  3 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000083 at pt    47
 Maximum DWI gradient std dev =  0.416025798 at pt   147
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   3          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06589
   NET REACTION COORDINATE UP TO THIS POINT =    0.19729
  # OF POINTS ALONG THE PATH =   3
  # OF STEPS =   1

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.445206   -0.168463   -0.105628
      2          6           0        0.169615    0.480239    0.659593
      3          1           0        0.087633    0.049329    1.688886
      4          1           0        1.793101    0.204818   -0.132204
      5          1           0       -0.103077    1.552355    0.821013
      6          8           0        2.747655   -0.045704   -0.408890
      7          1           0        2.736688   -0.953567   -0.077841
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901059   0.000000
     3  H    2.370087   1.118860   0.000000
     4  H    3.259859   1.827159   2.499834   0.000000
     5  H    2.370905   1.117967   1.746042   2.513956   0.000000
     6  O    4.205606   2.839818   3.389014   1.024934   3.491866
     7  H    4.255044   3.031414   3.338355   1.495047   3.892538
                    6          7
     6  O    0.000000
     7  H    0.966400   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     27.7202998      2.4282173      2.2803710
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.7224029729 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000640    0.000130   -0.000145
         Rot=    1.000000   -0.000143   -0.000068    0.000051 Ang=  -0.02 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3410992.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507775583     A.U. after   11 cycles
            NFock= 11  Conv=0.35D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036191228D-01 E2=     -0.6194196019D-01
     alpha-beta  T2 =       0.1202974247D+00 E2=     -0.3697232854D+00
     beta-beta   T2 =       0.2036191228D-01 E2=     -0.6194196019D-01
 ANorm=    0.1077506960D+01
 E2 =    -0.4936072058D+00 EUMP2 =    -0.57500138278879D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353324.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.49D-03 Max=4.80D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.35D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.15D-04 Max=4.88D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.24D-05 Max=5.88D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.17D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.88D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.74D-06 Max=2.13D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.14D-07 Max=7.06D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.29D-07 Max=1.20D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.94D-08 Max=3.65D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.49D-09 Max=6.27D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.62D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.43D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.40D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000393356   -0.000117310   -0.000128607
      2        6          -0.000068946    0.000190949    0.000192430
      3        1          -0.000014637    0.000016712    0.000012159
      4        1           0.000007680   -0.000021093    0.000023559
      5        1          -0.000016400    0.000007975    0.000005343
      6        8          -0.000235409   -0.000365962    0.000082891
      7        1          -0.000065645    0.000288729   -0.000187776
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000393356 RMS     0.000166831
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  4 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000102 at pt    47
 Maximum DWI gradient std dev =  0.516160077 at pt   145
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   4          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06589
   NET REACTION COORDINATE UP TO THIS POINT =    0.26318
  # OF POINTS ALONG THE PATH =   4
  # OF STEPS =   1

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.442779   -0.169203   -0.106439
      2          6           0        0.168364    0.483642    0.663142
      3          1           0        0.084071    0.053677    1.692629
      4          1           0        1.791710    0.206709   -0.128549
      5          1           0       -0.107027    1.555387    0.822455
      6          8           0        2.744251   -0.046809   -0.409464
      7          1           0        2.726469   -0.959505   -0.092486
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901116   0.000000
     3  H    2.370146   1.118846   0.000000
     4  H    3.256336   1.827217   2.501227   0.000000
     5  H    2.370926   1.117971   1.746097   2.515660   0.000000
     6  O    4.199765   2.840257   3.391968   1.024948   3.494917
     7  H    4.243513   3.032746   3.345958   1.495035   3.897499
                    6          7
     6  O    0.000000
     7  H    0.966336   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     27.4857461      2.4354280      2.2849384
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.7493647723 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000692    0.000151   -0.000138
         Rot=    1.000000   -0.000089   -0.000070    0.000046 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411020.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507801596     A.U. after   11 cycles
            NFock= 11  Conv=0.29D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2036015845D-01 E2=     -0.6193943223D-01
     alpha-beta  T2 =       0.1202898646D+00 E2=     -0.3697129517D+00
     beta-beta   T2 =       0.2036015845D-01 E2=     -0.6193943223D-01
 ANorm=    0.1077501824D+01
 E2 =    -0.4935918162D+00 EUMP2 =    -0.57500139341265D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353305.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.49D-03 Max=4.78D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.35D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.87D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.23D-05 Max=5.89D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.17D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.92D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.74D-06 Max=2.15D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.18D-07 Max=7.09D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.30D-07 Max=1.21D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.95D-08 Max=3.67D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.50D-09 Max=6.26D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.64D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.43D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.41D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000383193   -0.000114813   -0.000120990
      2        6          -0.000070359    0.000189538    0.000186503
      3        1          -0.000013380    0.000015382    0.000008778
      4        1           0.000013055   -0.000022051    0.000019048
      5        1          -0.000013604    0.000005236    0.000002873
      6        8          -0.000235754   -0.000302371    0.000067766
      7        1          -0.000063150    0.000229079   -0.000163978
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000383193 RMS     0.000152285
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  5 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000079 at pt    47
 Maximum DWI gradient std dev =  0.432406174 at pt   147
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   5          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06588
   NET REACTION COORDINATE UP TO THIS POINT =    0.32906
  # OF POINTS ALONG THE PATH =   5
  # OF STEPS =   1

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.440406   -0.169941   -0.107205
      2          6           0        0.167141    0.486999    0.666503
      3          1           0        0.080659    0.057972    1.696172
      4          1           0        1.790443    0.208591   -0.124857
      5          1           0       -0.110851    1.558376    0.823696
      6          8           0        2.740964   -0.047859   -0.409889
      7          1           0        2.715714   -0.965754   -0.108389
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901158   0.000000
     3  H    2.370180   1.118822   0.000000
     4  H    3.252997   1.827258   2.502438   0.000000
     5  H    2.370944   1.117962   1.746168   2.517259   0.000000
     6  O    4.194089   2.840643   3.394689   1.024939   3.497795
     7  H    4.231626   3.034168   3.353799   1.495154   3.902497
                    6          7
     6  O    0.000000
     7  H    0.966474   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     27.2623272      2.4425235      2.2894143
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.7755725163 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000690    0.000145   -0.000180
         Rot=    1.000000   -0.000115   -0.000077    0.000050 Ang=  -0.02 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411020.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507820999     A.U. after   11 cycles
            NFock= 11  Conv=0.39D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035890976D-01 E2=     -0.6193745894D-01
     alpha-beta  T2 =       0.1202862959D+00 E2=     -0.3697078488D+00
     beta-beta   T2 =       0.2035890976D-01 E2=     -0.6193745894D-01
 ANorm=    0.1077499009D+01
 E2 =    -0.4935827667D+00 EUMP2 =    -0.57500140376560D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353343.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.76D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.35D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.87D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.23D-05 Max=5.90D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.18D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=5.96D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.75D-06 Max=2.18D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.21D-07 Max=7.12D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.31D-07 Max=1.22D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.97D-08 Max=3.68D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.51D-09 Max=6.25D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.66D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.44D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000369386   -0.000113285   -0.000117203
      2        6          -0.000065792    0.000182670    0.000176280
      3        1          -0.000012894    0.000015544    0.000011017
      4        1           0.000004449   -0.000023632    0.000024446
      5        1          -0.000014940    0.000008383    0.000003746
      6        8          -0.000219166   -0.000434361    0.000104989
      7        1          -0.000061043    0.000364681   -0.000203276
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000434361 RMS     0.000177223
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  6 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000122 at pt    47
 Maximum DWI gradient std dev =  0.606263227 at pt   143
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   6          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06588
   NET REACTION COORDINATE UP TO THIS POINT =    0.39494
  # OF POINTS ALONG THE PATH =   6
  # OF STEPS =   1

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.438008   -0.170687   -0.107983
      2          6           0        0.165821    0.490497    0.670035
      3          1           0        0.076855    0.062744    1.700020
      4          1           0        1.789012    0.210354   -0.121247
      5          1           0       -0.114837    1.561555    0.824771
      6          8           0        2.737454   -0.049059   -0.410583
      7          1           0        2.705503   -0.970819   -0.122550
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901248   0.000000
     3  H    2.370268   1.118819   0.000000
     4  H    3.249465   1.827391   2.504054   0.000000
     5  H    2.370964   1.117979   1.746208   2.518995   0.000000
     6  O    4.188179   2.841153   3.397931   1.024965   3.500820
     7  H    4.220084   3.035395   3.361518   1.495035   3.907001
                    6          7
     6  O    0.000000
     7  H    0.966243   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     27.0313910      2.4498763      2.2940217
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8028356465 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000803    0.000191   -0.000148
         Rot=    1.000000    0.000013   -0.000078    0.000038 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411020.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507853029     A.U. after   11 cycles
            NFock= 11  Conv=0.24D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035666442D-01 E2=     -0.6193417576D-01
     alpha-beta  T2 =       0.1202755652D+00 E2=     -0.3696926795D+00
     beta-beta   T2 =       0.2035666442D-01 E2=     -0.6193417576D-01
 ANorm=    0.1077491946D+01
 E2 =    -0.4935610311D+00 EUMP2 =    -0.57500141405973D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.74D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.35D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.23D-05 Max=5.91D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.18D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=6.01D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.20D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.25D-07 Max=7.15D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.32D-07 Max=1.23D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.98D-08 Max=3.70D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.52D-09 Max=6.25D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.68D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.45D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000364960   -0.000110970   -0.000106738
      2        6          -0.000073059    0.000187976    0.000175314
      3        1          -0.000010903    0.000013006    0.000002043
      4        1           0.000022815   -0.000025107    0.000011440
      5        1          -0.000008415    0.000000222   -0.000001465
      6        8          -0.000233956   -0.000207531    0.000052433
      7        1          -0.000061442    0.000142403   -0.000133028
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000364960 RMS     0.000133142
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  7 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000028 at pt    47
 Maximum DWI gradient std dev =  0.275488044 at pt   151
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.438037   -0.170683   -0.107954
      2          6           0        0.165845    0.490450    0.669897
      3          1           0        0.077014    0.062594    1.699828
      4          1           0        1.789115    0.210312   -0.121243
      5          1           0       -0.114731    1.561491    0.824694
      6          8           0        2.737550   -0.049011   -0.410454
      7          1           0        2.705075   -0.971021   -0.123542
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901207   0.000000
     3  H    2.370206   1.118798   0.000000
     4  H    3.249592   1.827399   2.503879   0.000000
     5  H    2.370948   1.117950   1.746229   2.518951   0.000000
     6  O    4.188298   2.841100   3.397675   1.024900   3.500688
     7  H    4.219735   3.035315   3.361509   1.494837   3.906927
                    6          7
     6  O    0.000000
     7  H    0.966165   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     27.0387180      2.4497748      2.2939675
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8042829782 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000018   -0.000009   -0.000031
         Rot=    1.000000   -0.000037   -0.000004    0.000004 Ang=  -0.00 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411020.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507857459     A.U. after    7 cycles
            NFock=  7  Conv=0.68D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035627581D-01 E2=     -0.6193406124D-01
     alpha-beta  T2 =       0.1202713567D+00 E2=     -0.3696885613D+00
     beta-beta   T2 =       0.2035627581D-01 E2=     -0.6193406124D-01
 ANorm=    0.1077489633D+01
 E2 =    -0.4935566838D+00 EUMP2 =    -0.57500141414289D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.74D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.35D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.23D-05 Max=5.91D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.18D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.01D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.20D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.25D-07 Max=7.15D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.32D-07 Max=1.23D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.98D-08 Max=3.70D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.52D-09 Max=6.25D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.68D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.45D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000355339   -0.000112714   -0.000113271
      2        6          -0.000061051    0.000170846    0.000165541
      3        1          -0.000011801    0.000015572    0.000014351
      4        1          -0.000010559    0.000008395    0.000020263
      5        1          -0.000014546    0.000013299    0.000004226
      6        8          -0.000207909   -0.000156524    0.000020574
      7        1          -0.000049472    0.000061127   -0.000111684
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000355339 RMS     0.000119625
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =           0.0000000177
 Magnitude of corrector gradient =     0.0005325911
 Magnitude of analytic gradient =      0.0005481907
 Magnitude of difference =             0.0001370329
 Angle between gradients (degrees)=   14.4746
 Pt  7 Step number   2 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000049 at pt    47
 Maximum DWI gradient std dev =  0.415964869 at pt   148
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   7          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06582
   NET REACTION COORDINATE UP TO THIS POINT =    0.46076
  # OF POINTS ALONG THE PATH =   7
  # OF STEPS =   2

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435806   -0.171402   -0.108642
      2          6           0        0.164740    0.493615    0.672881
      3          1           0        0.073969    0.066605    1.702957
      4          1           0        1.788212    0.212262   -0.117368
      5          1           0       -0.118266    1.564285    0.825689
      6          8           0        2.734642   -0.049913   -0.410527
      7          1           0        2.693345   -0.977964   -0.142292
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901256   0.000000
     3  H    2.370224   1.118764   0.000000
     4  H    3.246778   1.827380   2.504682   0.000000
     5  H    2.370969   1.117935   1.746310   2.520314   0.000000
     6  O    4.183124   2.841407   3.399937   1.024894   3.503277
     7  H    4.207323   3.037087   3.370045   1.495502   3.912183
                    6          7
     6  O    0.000000
     7  H    0.966920   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8386420      2.4564362      2.2980960
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8259462732 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000618    0.000121   -0.000261
         Rot=    1.000000   -0.000224   -0.000088    0.000061 Ang=  -0.03 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507854791     A.U. after   11 cycles
            NFock= 11  Conv=0.55D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035676195D-01 E2=     -0.6193365356D-01
     alpha-beta  T2 =       0.1202827656D+00 E2=     -0.3697015918D+00
     beta-beta   T2 =       0.2035676195D-01 E2=     -0.6193365356D-01
 ANorm=    0.1077495378D+01
 E2 =    -0.4935688990D+00 EUMP2 =    -0.57500142368971D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=6.05D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.17D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.70D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.71D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.45D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.44D-11 Max=3.23D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000343459   -0.000112062   -0.000114529
      2        6          -0.000054209    0.000167768    0.000156674
      3        1          -0.000012150    0.000016600    0.000020341
      4        1          -0.000023217   -0.000031255    0.000039574
      5        1          -0.000020555    0.000019758    0.000007697
      6        8          -0.000186139   -0.000867943    0.000203309
      7        1          -0.000047190    0.000807134   -0.000313067
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000867943 RMS     0.000291553
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Pt  8 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000222 at pt    63
 Maximum DWI gradient std dev =  0.993930643 at pt    64
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435754   -0.171414   -0.108679
      2          6           0        0.164617    0.493812    0.673174
      3          1           0        0.073403    0.067260    1.703449
      4          1           0        1.787972    0.212174   -0.117412
      5          1           0       -0.118596    1.564540    0.825603
      6          8           0        2.734314   -0.050135   -0.410929
      7          1           0        2.694082   -0.976279   -0.139899
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901317   0.000000
     3  H    2.370301   1.118809   0.000000
     4  H    3.246478   1.827464   2.505250   0.000000
     5  H    2.370934   1.117991   1.746232   2.520549   0.000000
     6  O    4.182765   2.841566   3.400709   1.024949   3.503609
     7  H    4.207651   3.036518   3.369698   1.494644   3.911408
                    6          7
     6  O    0.000000
     7  H    0.965825   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8235784      2.4567960      2.2983053
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8304149241 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000155    0.000068    0.000045
         Rot=    1.000000    0.000155   -0.000001   -0.000016 Ang=   0.02 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507891690     A.U. after    9 cycles
            NFock=  9  Conv=0.51D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035383435D-01 E2=     -0.6193056539D-01
     alpha-beta  T2 =       0.1202592397D+00 E2=     -0.3696713789D+00
     beta-beta   T2 =       0.2035383435D-01 E2=     -0.6193056539D-01
 ANorm=    0.1077481744D+01
 E2 =    -0.4935325097D+00 EUMP2 =    -0.57500142419980D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.05D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.16D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.32D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.53D-09 Max=6.25D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.70D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000355387   -0.000114074   -0.000106745
      2        6          -0.000080910    0.000193876    0.000185637
      3        1          -0.000008105    0.000010804   -0.000001776
      4        1           0.000021513    0.000001652   -0.000003210
      5        1          -0.000000473   -0.000003486   -0.000005837
      6        8          -0.000232086    0.000182723   -0.000048971
      7        1          -0.000055327   -0.000271494   -0.000019098
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000355387 RMS     0.000137459
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000004557
 Magnitude of corrector gradient =     0.0005829911
 Magnitude of analytic gradient =      0.0006299167
 Magnitude of difference =             0.0003888952
 Angle between gradients (degrees)=   37.1476
 Pt  8 Step number   2 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000092 at pt    63
 Maximum DWI gradient std dev =  0.770670952 at pt    70
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435806   -0.171383   -0.108658
      2          6           0        0.164792    0.493480    0.672867
      3          1           0        0.074095    0.066271    1.702858
      4          1           0        1.788318    0.212193   -0.117292
      5          1           0       -0.118158    1.564123    0.825867
      6          8           0        2.734763   -0.049868   -0.410408
      7          1           0        2.693171   -0.977669   -0.143011
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901247   0.000000
     3  H    2.370205   1.118755   0.000000
     4  H    3.246873   1.827379   2.504556   0.000000
     5  H    2.370974   1.117921   1.746321   2.520301   0.000000
     6  O    4.183237   2.841385   3.399785   1.024867   3.503214
     7  H    4.207105   3.036880   3.369955   1.495056   3.911906
                    6          7
     6  O    0.000000
     7  H    0.966460   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8445475      2.4563325      2.2980241
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8282684411 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000233   -0.000077   -0.000050
         Rot=    1.000000   -0.000246    0.000005    0.000019 Ang=  -0.03 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507872344     A.U. after    9 cycles
            NFock=  9  Conv=0.74D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035537498D-01 E2=     -0.6193246352D-01
     alpha-beta  T2 =       0.1202704600D+00 E2=     -0.3696869555D+00
     beta-beta   T2 =       0.2035537498D-01 E2=     -0.6193246352D-01
 ANorm=    0.1077488380D+01
 E2 =    -0.4935518825D+00 EUMP2 =    -0.57500142422663D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.62D-06 Max=6.06D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.17D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.71D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.45D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000341218   -0.000111660   -0.000116283
      2        6          -0.000048977    0.000155200    0.000153388
      3        1          -0.000013814    0.000018190    0.000025613
      4        1          -0.000032197    0.000007898    0.000034515
      5        1          -0.000023287    0.000025410    0.000009369
      6        8          -0.000180350   -0.000446974    0.000083199
      7        1          -0.000042593    0.000351936   -0.000189802
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000446974 RMS     0.000168764
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000003377
 Magnitude of corrector gradient =     0.0005003246
 Magnitude of analytic gradient =      0.0007733752
 Magnitude of difference =             0.0005638758
 Angle between gradients (degrees)=   46.7266
 Pt  8 Step number   3 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000198 at pt    63
 Maximum DWI gradient std dev =  1.048471187 at pt    64
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435752   -0.171410   -0.108682
      2          6           0        0.164688    0.493703    0.673087
      3          1           0        0.073683    0.066871    1.703248
      4          1           0        1.788090    0.212181   -0.117302
      5          1           0       -0.118455    1.564396    0.825754
      6          8           0        2.734476   -0.050047   -0.410721
      7          1           0        2.693762   -0.976656   -0.141182
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901301   0.000000
     3  H    2.370287   1.118794   0.000000
     4  H    3.246594   1.827404   2.504937   0.000000
     5  H    2.370963   1.117972   1.746281   2.520467   0.000000
     6  O    4.182912   2.841498   3.400346   1.024941   3.503500
     7  H    4.207417   3.036644   3.369820   1.494706   3.911582
                    6          7
     6  O    0.000000
     7  H    0.965874   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8304617      2.4566590      2.2982180
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8303478526 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000126    0.000049    0.000036
         Rot=    1.000000    0.000145   -0.000002   -0.000013 Ang=   0.02 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507890888     A.U. after    8 cycles
            NFock=  8  Conv=0.83D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035391229D-01 E2=     -0.6193076855D-01
     alpha-beta  T2 =       0.1202592599D+00 E2=     -0.3696718940D+00
     beta-beta   T2 =       0.2035391229D-01 E2=     -0.6193076855D-01
 ANorm=    0.1077481826D+01
 E2 =    -0.4935334311D+00 EUMP2 =    -0.57500142431905D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.05D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.16D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.32D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.53D-09 Max=6.25D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.70D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000353034   -0.000112088   -0.000108197
      2        6          -0.000069987    0.000180707    0.000175583
      3        1          -0.000011932    0.000015028    0.000005555
      4        1           0.000013837    0.000004420    0.000003697
      5        1          -0.000007969    0.000002513   -0.000000540
      6        8          -0.000220534    0.000131697   -0.000044901
      7        1          -0.000056448   -0.000222278   -0.000031198
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000353034 RMS     0.000127156
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000001828
 Magnitude of corrector gradient =     0.0005410446
 Magnitude of analytic gradient =      0.0005827026
 Magnitude of difference =             0.0002971340
 Angle between gradients (degrees)=   30.3754
 Pt  8 Step number   4 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000109 at pt    48
 Maximum DWI gradient std dev =  0.904149510 at pt    68
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435787   -0.171391   -0.108667
      2          6           0        0.164783    0.493515    0.672905
      3          1           0        0.074067    0.066331    1.702913
      4          1           0        1.788273    0.212176   -0.117282
      5          1           0       -0.118202    1.564163    0.825879
      6          8           0        2.734726   -0.049897   -0.410434
      7          1           0        2.693281   -0.977437   -0.142789
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901257   0.000000
     3  H    2.370229   1.118764   0.000000
     4  H    3.246808   1.827366   2.504572   0.000000
     5  H    2.370982   1.117931   1.746327   2.520331   0.000000
     6  O    4.183180   2.841395   3.399831   1.024887   3.503264
     7  H    4.207146   3.036833   3.369918   1.494948   3.911840
                    6          7
     6  O    0.000000
     7  H    0.966272   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8425705      2.4563916      2.2980595
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8290386391 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000125   -0.000043   -0.000027
         Rot=    1.000000   -0.000129    0.000003    0.000010 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507878592     A.U. after    8 cycles
            NFock=  8  Conv=0.64D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035489121D-01 E2=     -0.6193196280D-01
     alpha-beta  T2 =       0.1202664625D+00 E2=     -0.3696818240D+00
     beta-beta   T2 =       0.2035489121D-01 E2=     -0.6193196280D-01
 ANorm=    0.1077486076D+01
 E2 =    -0.4935457496D+00 EUMP2 =    -0.57500142434114D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.06D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.17D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.53D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.70D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000343800   -0.000111071   -0.000113937
      2        6          -0.000051768    0.000158257    0.000156777
      3        1          -0.000014654    0.000018844    0.000021150
      4        1          -0.000019781    0.000010001    0.000028072
      5        1          -0.000020944    0.000019918    0.000007978
      6        8          -0.000189538   -0.000264041    0.000038575
      7        1          -0.000047117    0.000168091   -0.000138614
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000343800 RMS     0.000130171
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000001171
 Magnitude of corrector gradient =     0.0004998199
 Magnitude of analytic gradient =      0.0005965194
 Magnitude of difference =             0.0002935809
 Angle between gradients (degrees)=   29.4084
 Pt  8 Step number   5 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000167 at pt    63
 Maximum DWI gradient std dev =  1.036183132 at pt    64
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435752   -0.171408   -0.108681
      2          6           0        0.164715    0.493658    0.673045
      3          1           0        0.073796    0.066719    1.703161
      4          1           0        1.788131    0.212176   -0.117287
      5          1           0       -0.118392    1.564338    0.825802
      6          8           0        2.734540   -0.050009   -0.410635
      7          1           0        2.693645   -0.976834   -0.141625
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901290   0.000000
     3  H    2.370277   1.118786   0.000000
     4  H    3.246635   1.827386   2.504823   0.000000
     5  H    2.370972   1.117962   1.746299   2.520435   0.000000
     6  O    4.182972   2.841468   3.400195   1.024931   3.503443
     7  H    4.207341   3.036696   3.369844   1.494754   3.911652
                    6          7
     6  O    0.000000
     7  H    0.965942   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8334703      2.4566012      2.2981847
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8302116509 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000083    0.000031    0.000023
         Rot=    1.000000    0.000093   -0.000001   -0.000008 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507888952     A.U. after    8 cycles
            NFock=  8  Conv=0.51D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035407079D-01 E2=     -0.6193099048D-01
     alpha-beta  T2 =       0.1202602810D+00 E2=     -0.3696734273D+00
     beta-beta   T2 =       0.2035407079D-01 E2=     -0.6193099048D-01
 ANorm=    0.1077482447D+01
 E2 =    -0.4935354083D+00 EUMP2 =    -0.57500142436067D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.05D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.17D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.32D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.53D-09 Max=6.25D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.70D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000350879   -0.000111513   -0.000109248
      2        6          -0.000064800    0.000174192    0.000170337
      3        1          -0.000013140    0.000016542    0.000009259
      4        1           0.000007449    0.000006291    0.000009449
      5        1          -0.000011515    0.000006482    0.000001858
      6        8          -0.000213525    0.000063492   -0.000032379
      7        1          -0.000055347   -0.000155487   -0.000049276
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000350879 RMS     0.000117975
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000649
 Magnitude of corrector gradient =     0.0005258340
 Magnitude of analytic gradient =      0.0005406271
 Magnitude of difference =             0.0001932399
 Angle between gradients (degrees)=   20.8191
 Pt  8 Step number   6 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000115 at pt    48
 Maximum DWI gradient std dev =  0.945935838 at pt    66
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435775   -0.171396   -0.108671
      2          6           0        0.164770    0.493547    0.672936
      3          1           0        0.074017    0.066405    1.702964
      4          1           0        1.788240    0.212173   -0.117279
      5          1           0       -0.118243    1.564200    0.825871
      6          8           0        2.734687   -0.049920   -0.410470
      7          1           0        2.693362   -0.977298   -0.142556
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901264   0.000000
     3  H    2.370241   1.118769   0.000000
     4  H    3.246763   1.827366   2.504614   0.000000
     5  H    2.370982   1.117938   1.746324   2.520355   0.000000
     6  O    4.183132   2.841408   3.399897   1.024898   3.503304
     7  H    4.207184   3.036805   3.369900   1.494900   3.911801
                    6          7
     6  O    0.000000
     7  H    0.966186   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8406233      2.4564415      2.2980900
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8293951570 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000071   -0.000025   -0.000016
         Rot=    1.000000   -0.000075    0.000002    0.000006 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507881380     A.U. after    7 cycles
            NFock=  7  Conv=0.88D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035467313D-01 E2=     -0.6193171917D-01
     alpha-beta  T2 =       0.1202647475D+00 E2=     -0.3696795568D+00
     beta-beta   T2 =       0.2035467313D-01 E2=     -0.6193171917D-01
 ANorm=    0.1077485078D+01
 E2 =    -0.4935429952D+00 EUMP2 =    -0.57500142437549D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.06D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.17D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.53D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.70D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000345325   -0.000111026   -0.000112765
      2        6          -0.000054212    0.000161159    0.000159394
      3        1          -0.000014581    0.000018647    0.000018503
      4        1          -0.000013050    0.000009593    0.000024007
      5        1          -0.000019082    0.000016891    0.000006815
      6        8          -0.000194960   -0.000178779    0.000019207
      7        1          -0.000049440    0.000083516   -0.000115161
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000345325 RMS     0.000118335
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000392
 Magnitude of corrector gradient =     0.0005030725
 Magnitude of analytic gradient =      0.0005422807
 Magnitude of difference =             0.0001674407
 Angle between gradients (degrees)=   17.9302
 Pt  8 Step number   7 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000152 at pt    63
 Maximum DWI gradient std dev =  1.019854491 at pt    64
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435754   -0.171406   -0.108680
      2          6           0        0.164728    0.493635    0.673022
      3          1           0        0.073849    0.066644    1.703116
      4          1           0        1.788154    0.212174   -0.117283
      5          1           0       -0.118359    1.564307    0.825822
      6          8           0        2.734573   -0.049989   -0.410594
      7          1           0        2.693582   -0.976934   -0.141840
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901284   0.000000
     3  H    2.370269   1.118782   0.000000
     4  H    3.246659   1.827380   2.504770   0.000000
     5  H    2.370975   1.117956   1.746306   2.520418   0.000000
     6  O    4.183005   2.841453   3.400122   1.024924   3.503413
     7  H    4.207303   3.036722   3.369855   1.494785   3.911687
                    6          7
     6  O    0.000000
     7  H    0.965990   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8350394      2.4565693      2.2981664
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8300834305 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000052    0.000019    0.000014
         Rot=    1.000000    0.000057   -0.000001   -0.000005 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507887491     A.U. after    7 cycles
            NFock=  7  Conv=0.68D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035418824D-01 E2=     -0.6193113972D-01
     alpha-beta  T2 =       0.1202611159D+00 E2=     -0.3696746046D+00
     beta-beta   T2 =       0.2035418824D-01 E2=     -0.6193113972D-01
 ANorm=    0.1077482943D+01
 E2 =    -0.4935368840D+00 EUMP2 =    -0.57500142437476D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.05D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.17D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.53D-09 Max=6.25D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.70D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.30D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000349593   -0.000111330   -0.000109971
      2        6          -0.000062184    0.000170933    0.000167663
      3        1          -0.000013591    0.000017174    0.000011342
      4        1           0.000003187    0.000007213    0.000012745
      5        1          -0.000013329    0.000008805    0.000003074
      6        8          -0.000209391    0.000015110   -0.000022499
      7        1          -0.000054285   -0.000107905   -0.000062354
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000349593 RMS     0.000113820
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000282
 Magnitude of corrector gradient =     0.0005193213
 Magnitude of analytic gradient =      0.0005215881
 Magnitude of difference =             0.0001208438
 Angle between gradients (degrees)=   13.3312
 Pt  8 Step number   8 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000119 at pt    63
 Maximum DWI gradient std dev =  0.965417983 at pt    66
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.435769   -0.171399   -0.108674
      2          6           0        0.164761    0.493567    0.672956
      3          1           0        0.073982    0.066456    1.702997
      4          1           0        1.788220    0.212173   -0.117279
      5          1           0       -0.118269    1.564224    0.825862
      6          8           0        2.734662   -0.049935   -0.410496
      7          1           0        2.693411   -0.977216   -0.142400
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901268   0.000000
     3  H    2.370248   1.118772   0.000000
     4  H    3.246738   1.827368   2.504646   0.000000
     5  H    2.370981   1.117942   1.746321   2.520369   0.000000
     6  O    4.183102   2.841417   3.399944   1.024904   3.503328
     7  H    4.207208   3.036788   3.369889   1.494873   3.911776
                    6          7
     6  O    0.000000
     7  H    0.966140   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.8393616      2.4564722      2.2981086
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8295771150 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000042   -0.000015   -0.000010
         Rot=    1.000000   -0.000045    0.000001    0.000004 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411034.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507882853     A.U. after    7 cycles
            NFock=  7  Conv=0.53D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035455708D-01 E2=     -0.6193158411D-01
     alpha-beta  T2 =       0.1202638606D+00 E2=     -0.3696783635D+00
     beta-beta   T2 =       0.2035455708D-01 E2=     -0.6193158411D-01
 ANorm=    0.1077484559D+01
 E2 =    -0.4935415317D+00 EUMP2 =    -0.57500142438453D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353375.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.73D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.92D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.05D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.76D-06 Max=2.22D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.28D-07 Max=7.17D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.25D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=2.99D-08 Max=3.71D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.53D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.30D-09 Max=8.70D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.42D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000346248   -0.000111054   -0.000112112
      2        6          -0.000055846    0.000163134    0.000161099
      3        1          -0.000014427    0.000018399    0.000016933
      4        1          -0.000009324    0.000009166    0.000021541
      5        1          -0.000017877    0.000015114    0.000006042
      6        8          -0.000198129   -0.000132986    0.000009150
      7        1          -0.000050644    0.000038226   -0.000102654
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000346248 RMS     0.000114250
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000118
 Magnitude of corrector gradient =     0.0005059308
 Magnitude of analytic gradient =      0.0005235599
 Magnitude of difference =             0.0000994922
 Angle between gradients (degrees)=   10.9172
 Pt  8 Step number   9 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000144 at pt    63
 Maximum DWI gradient std dev =  1.009230413 at pt    66
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   8          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06586
   NET REACTION COORDINATE UP TO THIS POINT =    0.52662
  # OF POINTS ALONG THE PATH =   8
  # OF STEPS =   9

 Calculating another point on the path.
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433363   -0.172123   -0.109503
      2          6           0        0.163511    0.496836    0.676599
      3          1           0        0.069980    0.071084    1.706989
      4          1           0        1.787117    0.213998   -0.113352
      5          1           0       -0.122189    1.567196    0.827058
      6          8           0        2.731416   -0.051062   -0.411062
      7          1           0        2.682899   -0.982116   -0.157776
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901439   0.000000
     3  H    2.370408   1.118801   0.000000
     4  H    3.243547   1.827598   2.506516   0.000000
     5  H    2.370982   1.118004   1.746299   2.522096   0.000000
     6  O    4.177437   2.842065   3.403571   1.024982   3.506388
     7  H    4.195478   3.038222   3.378450   1.495020   3.916300
                    6          7
     6  O    0.000000
     7  H    0.966110   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6147531      2.4636396      2.3024797
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8523639883 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000665    0.000180   -0.000149
         Rot=    1.000000   -0.000120   -0.000069    0.000042 Ang=  -0.02 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507907600     A.U. after   11 cycles
            NFock= 11  Conv=0.47D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035291486D-01 E2=     -0.6192816309D-01
     alpha-beta  T2 =       0.1202610260D+00 E2=     -0.3696704692D+00
     beta-beta   T2 =       0.2035291486D-01 E2=     -0.6192816309D-01
 ANorm=    0.1077481719D+01
 E2 =    -0.4935267954D+00 EUMP2 =    -0.57500143439520D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.18D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.72D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000357375   -0.000110157   -0.000097612
      2        6          -0.000085540    0.000199167    0.000182439
      3        1          -0.000008678    0.000010526   -0.000010094
      4        1           0.000043050   -0.000035211   -0.000001351
      5        1           0.000000669   -0.000010430   -0.000007977
      6        8          -0.000242147   -0.000069840    0.000030263
      7        1          -0.000064729    0.000015946   -0.000095668
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000357375 RMS     0.000121739
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Reaction path inflection point has been passed.
   Previous lowest Hessian eigenvalue=   -0.0002001814
   Current lowest Hessian eigenvalue =    0.0000089784
 Pt  9 Step number   1 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000018 at pt    64
 Maximum DWI gradient std dev =  0.183409130 at pt    77
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433503   -0.172126   -0.109384
      2          6           0        0.163521    0.496876    0.676169
      3          1           0        0.070403    0.071006    1.706491
      4          1           0        1.787215    0.213911   -0.113517
      5          1           0       -0.121989    1.567218    0.826655
      6          8           0        2.731542   -0.051001   -0.410858
      7          1           0        2.682041   -0.982744   -0.159625
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901353   0.000000
     3  H    2.370285   1.118749   0.000000
     4  H    3.243774   1.827582   2.506052   0.000000
     5  H    2.370982   1.117942   1.746360   2.521989   0.000000
     6  O    4.177698   2.841924   3.402899   1.024863   3.506097
     7  H    4.194917   3.038218   3.378377   1.494932   3.916330
                    6          7
     6  O    0.000000
     7  H    0.966289   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6301308      2.4634016      2.3023582
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8536953864 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000081   -0.000005   -0.000092
         Rot=    1.000000    0.000015   -0.000021    0.000008 Ang=   0.00 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507904355     A.U. after    8 cycles
            NFock=  8  Conv=0.84D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035312405D-01 E2=     -0.6192891071D-01
     alpha-beta  T2 =       0.1202607123D+00 E2=     -0.3696722908D+00
     beta-beta   T2 =       0.2035312405D-01 E2=     -0.6192891071D-01
 ANorm=    0.1077481768D+01
 E2 =    -0.4935301122D+00 EUMP2 =    -0.57500143446710D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.20D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.34D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.55D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.73D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000338012   -0.000111451   -0.000109590
      2        6          -0.000056692    0.000163661    0.000154608
      3        1          -0.000012176    0.000015805    0.000018650
      4        1          -0.000022548    0.000013514    0.000027914
      5        1          -0.000016086    0.000016292    0.000004590
      6        8          -0.000188683   -0.000281852    0.000046687
      7        1          -0.000041826    0.000184030   -0.000142859
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000338012 RMS     0.000132484
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000343
 Magnitude of corrector gradient =     0.0005068159
 Magnitude of analytic gradient =      0.0006071191
 Magnitude of difference =             0.0003143065
 Angle between gradients (degrees)=   31.1496
 Pt  9 Step number   2 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000050 at pt    47
 Maximum DWI gradient std dev =  0.436831651 at pt    73
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433494   -0.172134   -0.109392
      2          6           0        0.163498    0.496943    0.676241
      3          1           0        0.070284    0.071186    1.706620
      4          1           0        1.787160    0.213926   -0.113453
      5          1           0       -0.122078    1.567301    0.826629
      6          8           0        2.731465   -0.051067   -0.410965
      7          1           0        2.682314   -0.982350   -0.159093
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901385   0.000000
     3  H    2.370328   1.118766   0.000000
     4  H    3.243713   1.827566   2.506134   0.000000
     5  H    2.370988   1.117961   1.746353   2.522017   0.000000
     6  O    4.177617   2.841969   3.403086   1.024912   3.506203
     7  H    4.195092   3.038179   3.378391   1.494811   3.916246
                    6          7
     6  O    0.000000
     7  H    0.965994   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6257429      2.4634768      2.3023918
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8542800431 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000032    0.000016    0.000010
         Rot=    1.000000    0.000041   -0.000001   -0.000004 Ang=   0.00 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507913880     A.U. after    7 cycles
            NFock=  7  Conv=0.64D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035237982D-01 E2=     -0.6192802178D-01
     alpha-beta  T2 =       0.1202550112D+00 E2=     -0.3696645565D+00
     beta-beta   T2 =       0.2035237982D-01 E2=     -0.6192802178D-01
 ANorm=    0.1077478432D+01
 E2 =    -0.4935206000D+00 EUMP2 =    -0.57500143448014D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.72D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000346256   -0.000110274   -0.000105239
      2        6          -0.000065080    0.000171821    0.000164589
      3        1          -0.000012302    0.000015758    0.000009498
      4        1           0.000004979    0.000003305    0.000009266
      5        1          -0.000011015    0.000007487    0.000001270
      6        8          -0.000206647    0.000015484   -0.000012290
      7        1          -0.000056191   -0.000103581   -0.000067095
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000346256 RMS     0.000112599
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000418
 Magnitude of corrector gradient =     0.0005224684
 Magnitude of analytic gradient =      0.0005159930
 Magnitude of difference =             0.0001248413
 Angle between gradients (degrees)=   13.7909
 Pt  9 Step number   3 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000044 at pt    48
 Maximum DWI gradient std dev =  0.343161213 at pt   112
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433518   -0.172122   -0.109383
      2          6           0        0.163557    0.496828    0.676131
      3          1           0        0.070512    0.070866    1.706423
      4          1           0        1.787273    0.213922   -0.113441
      5          1           0       -0.121929    1.567160    0.826705
      6          8           0        2.731621   -0.050976   -0.410786
      7          1           0        2.681989   -0.982787   -0.160129
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901361   0.000000
     3  H    2.370296   1.118750   0.000000
     4  H    3.243846   1.827543   2.505920   0.000000
     5  H    2.370997   1.117938   1.746377   2.521940   0.000000
     6  O    4.177786   2.841906   3.402780   1.024880   3.506066
     7  H    4.194895   3.038271   3.378462   1.494928   3.916380
                    6          7
     6  O    0.000000
     7  H    0.966211   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6331205      2.4633095      2.3022901
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8535441497 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000073   -0.000024   -0.000017
         Rot=    1.000000   -0.000080    0.000002    0.000006 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507907145     A.U. after    7 cycles
            NFock=  7  Conv=0.94D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035291458D-01 E2=     -0.6192869047D-01
     alpha-beta  T2 =       0.1202589080D+00 E2=     -0.3696699763D+00
     beta-beta   T2 =       0.2035291458D-01 E2=     -0.6192869047D-01
 ANorm=    0.1077480736D+01
 E2 =    -0.4935273572D+00 EUMP2 =    -0.57500143450218D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.20D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.34D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.73D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000340848   -0.000109894   -0.000108656
      2        6          -0.000055410    0.000159685    0.000154626
      3        1          -0.000013758    0.000017793    0.000017924
      4        1          -0.000014707    0.000009068    0.000023964
      5        1          -0.000018040    0.000016914    0.000005766
      6        8          -0.000191264   -0.000203282    0.000028189
      7        1          -0.000047669    0.000109716   -0.000121813
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000340848 RMS     0.000120066
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000362
 Magnitude of corrector gradient =     0.0004978645
 Magnitude of analytic gradient =      0.0005502111
 Magnitude of difference =             0.0002034049
 Angle between gradients (degrees)=   21.6456
 Pt  9 Step number   4 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000054 at pt    47
 Maximum DWI gradient std dev =  0.515940219 at pt   145
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433500   -0.172132   -0.109391
      2          6           0        0.163515    0.496915    0.676215
      3          1           0        0.070351    0.071105    1.706575
      4          1           0        1.787182    0.213918   -0.113447
      5          1           0       -0.122043    1.567269    0.826654
      6          8           0        2.731506   -0.051048   -0.410916
      7          1           0        2.682238   -0.982402   -0.159401
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901383   0.000000
     3  H    2.370330   1.118765   0.000000
     4  H    3.243739   1.827553   2.506069   0.000000
     5  H    2.370995   1.117959   1.746363   2.522001   0.000000
     6  O    4.177662   2.841954   3.403004   1.024912   3.506177
     7  H    4.195037   3.038190   3.378416   1.494797   3.916263
                    6          7
     6  O    0.000000
     7  H    0.965974   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6276456      2.4634334      2.3023627
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8543187460 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000053    0.000019    0.000012
         Rot=    1.000000    0.000058   -0.000002   -0.000005 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507914654     A.U. after    7 cycles
            NFock=  7  Conv=0.67D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035232067D-01 E2=     -0.6192799157D-01
     alpha-beta  T2 =       0.1202543779D+00 E2=     -0.3696638535D+00
     beta-beta   T2 =       0.2035232067D-01 E2=     -0.6192799157D-01
 ANorm=    0.1077478083D+01
 E2 =    -0.4935198366D+00 EUMP2 =    -0.57500143449029D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.72D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000345858   -0.000109893   -0.000105213
      2        6          -0.000063507    0.000169713    0.000163015
      3        1          -0.000013182    0.000016646    0.000009980
      4        1           0.000004880    0.000006146    0.000011245
      5        1          -0.000012072    0.000007709    0.000002020
      6        8          -0.000205727    0.000032800   -0.000019322
      7        1          -0.000056251   -0.000123121   -0.000061726
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000345858 RMS     0.000113185
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000399
 Magnitude of corrector gradient =     0.0005151564
 Magnitude of analytic gradient =      0.0005186785
 Magnitude of difference =             0.0001460545
 Angle between gradients (degrees)=   16.2385
 Pt  9 Step number   5 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000052 at pt    48
 Maximum DWI gradient std dev =  0.395613655 at pt    74
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433519   -0.172122   -0.109383
      2          6           0        0.163562    0.496821    0.676125
      3          1           0        0.070535    0.070840    1.706411
      4          1           0        1.787276    0.213919   -0.113434
      5          1           0       -0.121921    1.567152    0.826717
      6          8           0        2.731633   -0.050973   -0.410773
      7          1           0        2.681987   -0.982777   -0.160207
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901362   0.000000
     3  H    2.370299   1.118750   0.000000
     4  H    3.243851   1.827535   2.505895   0.000000
     5  H    2.371001   1.117939   1.746381   2.521935   0.000000
     6  O    4.177799   2.841903   3.402756   1.024884   3.506063
     7  H    4.194894   3.038277   3.378469   1.494917   3.916383
                    6          7
     6  O    0.000000
     7  H    0.966182   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6336309      2.4632968      2.3022807
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8536100849 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000060   -0.000020   -0.000013
         Rot=    1.000000   -0.000064    0.000002    0.000005 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507908131     A.U. after    7 cycles
            NFock=  7  Conv=0.74D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035283881D-01 E2=     -0.6192861945D-01
     alpha-beta  T2 =       0.1202582355D+00 E2=     -0.3696691392D+00
     beta-beta   T2 =       0.2035283881D-01 E2=     -0.6192861945D-01
 ANorm=    0.1077480354D+01
 E2 =    -0.4935263781D+00 EUMP2 =    -0.57500143450913D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.34D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.73D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000341208   -0.000109632   -0.000108356
      2        6          -0.000055132    0.000159346    0.000154543
      3        1          -0.000014178    0.000018182    0.000017609
      4        1          -0.000012363    0.000009053    0.000023346
      5        1          -0.000018183    0.000016370    0.000005874
      6        8          -0.000192307   -0.000174436    0.000021060
      7        1          -0.000049045    0.000081117   -0.000114076
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000341208 RMS     0.000116415
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000290
 Magnitude of corrector gradient =     0.0004959937
 Magnitude of analytic gradient =      0.0005334828
 Magnitude of difference =             0.0001619788
 Angle between gradients (degrees)=   17.6214
 Pt  9 Step number   6 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000052 at pt    47
 Maximum DWI gradient std dev =  0.528238823 at pt    72
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433502   -0.172131   -0.109391
      2          6           0        0.163521    0.496905    0.676206
      3          1           0        0.070375    0.071073    1.706557
      4          1           0        1.787191    0.213916   -0.113443
      5          1           0       -0.122030    1.567256    0.826664
      6          8           0        2.731521   -0.051041   -0.410898
      7          1           0        2.682213   -0.982429   -0.159505
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901382   0.000000
     3  H    2.370329   1.118764   0.000000
     4  H    3.243749   1.827548   2.506045   0.000000
     5  H    2.370997   1.117957   1.746367   2.521994   0.000000
     6  O    4.177677   2.841948   3.402973   1.024911   3.506166
     7  H    4.195021   3.038199   3.378424   1.494800   3.916274
                    6          7
     6  O    0.000000
     7  H    0.965978   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6283281      2.4634182      2.3023529
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8543004159 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000052    0.000018    0.000011
         Rot=    1.000000    0.000056   -0.000001   -0.000004 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507914562     A.U. after    7 cycles
            NFock=  7  Conv=0.64D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035232888D-01 E2=     -0.6192801130D-01
     alpha-beta  T2 =       0.1202543906D+00 E2=     -0.3696639101D+00
     beta-beta   T2 =       0.2035232888D-01 E2=     -0.6192801130D-01
 ANorm=    0.1077478096D+01
 E2 =    -0.4935199327D+00 EUMP2 =    -0.57500143449509D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.72D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000345584   -0.000109773   -0.000105332
      2        6          -0.000062717    0.000168725    0.000162279
      3        1          -0.000013449    0.000016955    0.000010413
      4        1           0.000004402    0.000006600    0.000012126
      5        1          -0.000012611    0.000008141    0.000002381
      6        8          -0.000205032    0.000028536   -0.000019275
      7        1          -0.000056177   -0.000119183   -0.000062590
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000345584 RMS     0.000112722
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000324
 Magnitude of corrector gradient =     0.0005124281
 Magnitude of analytic gradient =      0.0005165549
 Magnitude of difference =             0.0001388821
 Angle between gradients (degrees)=   15.5070
 Pt  9 Step number   7 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000054 at pt    48
 Maximum DWI gradient std dev =  0.413253465 at pt    74
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433519   -0.172123   -0.109384
      2          6           0        0.163562    0.496823    0.676127
      3          1           0        0.070533    0.070844    1.706414
      4          1           0        1.787273    0.213918   -0.113433
      5          1           0       -0.121924    1.567154    0.826718
      6          8           0        2.731630   -0.050975   -0.410775
      7          1           0        2.681996   -0.982760   -0.160195
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901363   0.000000
     3  H    2.370301   1.118751   0.000000
     4  H    3.243847   1.827534   2.505895   0.000000
     5  H    2.371002   1.117940   1.746382   2.521937   0.000000
     6  O    4.177796   2.841904   3.402759   1.024886   3.506067
     7  H    4.194899   3.038274   3.378468   1.494909   3.916379
                    6          7
     6  O    0.000000
     7  H    0.966166   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6335089      2.4632999      2.3022823
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8536619106 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000052   -0.000018   -0.000011
         Rot=    1.000000   -0.000055    0.000001    0.000004 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507908643     A.U. after    7 cycles
            NFock=  7  Conv=0.63D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035279891D-01 E2=     -0.6192857702D-01
     alpha-beta  T2 =       0.1202579085D+00 E2=     -0.3696687151D+00
     beta-beta   T2 =       0.2035279891D-01 E2=     -0.6192857702D-01
 ANorm=    0.1077480165D+01
 E2 =    -0.4935258692D+00 EUMP2 =    -0.57500143451198D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.34D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.73D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000341452   -0.000109576   -0.000108154
      2        6          -0.000055366    0.000159629    0.000154822
      3        1          -0.000014252    0.000018233    0.000017228
      4        1          -0.000011133    0.000009017    0.000022782
      5        1          -0.000017988    0.000015898    0.000005759
      6        8          -0.000193054   -0.000158992    0.000017619
      7        1          -0.000049660    0.000065790   -0.000110056
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000341452 RMS     0.000114796
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000225
 Magnitude of corrector gradient =     0.0004960859
 Magnitude of analytic gradient =      0.0005260627
 Magnitude of difference =             0.0001394390
 Angle between gradients (degrees)=   15.3189
 Pt  9 Step number   8 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000050 at pt    47
 Maximum DWI gradient std dev =  0.526319454 at pt    72
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433503   -0.172131   -0.109390
      2          6           0        0.163524    0.496900    0.676200
      3          1           0        0.070388    0.071056    1.706547
      4          1           0        1.787196    0.213916   -0.113442
      5          1           0       -0.122023    1.567249    0.826669
      6          8           0        2.731529   -0.051036   -0.410889
      7          1           0        2.682198   -0.982449   -0.159557
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901381   0.000000
     3  H    2.370328   1.118763   0.000000
     4  H    3.243755   1.827546   2.506033   0.000000
     5  H    2.370998   1.117956   1.746368   2.521990   0.000000
     6  O    4.177685   2.841944   3.402957   1.024910   3.506160
     7  H    4.195012   3.038204   3.378428   1.494806   3.916281
                    6          7
     6  O    0.000000
     7  H    0.965987   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6286888      2.4634104      2.3023482
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8542740843 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000048    0.000016    0.000010
         Rot=    1.000000    0.000051   -0.000001   -0.000004 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507914304     A.U. after    7 cycles
            NFock=  7  Conv=0.59D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035234977D-01 E2=     -0.6192803910D-01
     alpha-beta  T2 =       0.1202545337D+00 E2=     -0.3696641165D+00
     beta-beta   T2 =       0.2035234977D-01 E2=     -0.6192803910D-01
 ANorm=    0.1077478182D+01
 E2 =    -0.4935201947D+00 EUMP2 =    -0.57500143449864D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.72D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000345343   -0.000109730   -0.000105474
      2        6          -0.000062201    0.000168082    0.000161773
      3        1          -0.000013552    0.000017091    0.000010808
      4        1           0.000003654    0.000006799    0.000012773
      5        1          -0.000012974    0.000008575    0.000002615
      6        8          -0.000204355    0.000019914   -0.000017770
      7        1          -0.000055914   -0.000110730   -0.000064725
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000345343 RMS     0.000112087
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000261
 Magnitude of corrector gradient =     0.0005109886
 Magnitude of analytic gradient =      0.0005136469
 Magnitude of difference =             0.0001258856
 Angle between gradients (degrees)=   14.1111
 Pt  9 Step number   9 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000054 at pt    48
 Maximum DWI gradient std dev =  0.422070395 at pt   147
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433517   -0.172123   -0.109384
      2          6           0        0.163560    0.496827    0.676131
      3          1           0        0.070527    0.070854    1.706421
      4          1           0        1.787269    0.213918   -0.113433
      5          1           0       -0.121929    1.567159    0.826716
      6          8           0        2.731625   -0.050978   -0.410781
      7          1           0        2.682007   -0.982743   -0.160165
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901364   0.000000
     3  H    2.370303   1.118752   0.000000
     4  H    3.243841   1.827534   2.505901   0.000000
     5  H    2.371002   1.117941   1.746382   2.521940   0.000000
     6  O    4.177790   2.841905   3.402768   1.024887   3.506072
     7  H    4.194904   3.038271   3.378466   1.494903   3.916375
                    6          7
     6  O    0.000000
     7  H    0.966155   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6332682      2.4633058      2.3022858
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8537036565 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=     0.000046   -0.000016   -0.000010
         Rot=    1.000000   -0.000049    0.000001    0.000004 Ang=  -0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507909006     A.U. after    7 cycles
            NFock=  7  Conv=0.56D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035277041D-01 E2=     -0.6192854449D-01
     alpha-beta  T2 =       0.1202576864D+00 E2=     -0.3696684192D+00
     beta-beta   T2 =       0.2035277041D-01 E2=     -0.6192854449D-01
 ANorm=    0.1077480036D+01
 E2 =    -0.4935255081D+00 EUMP2 =    -0.57500143451368D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.72D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000341664   -0.000109565   -0.000107994
      2        6          -0.000055686    0.000160021    0.000155159
      3        1          -0.000014246    0.000018207    0.000016880
      4        1          -0.000010236    0.000008929    0.000022241
      5        1          -0.000017743    0.000015490    0.000005609
      6        8          -0.000193678   -0.000147817    0.000015307
      7        1          -0.000050074    0.000054735   -0.000107201
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000341664 RMS     0.000113779
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000175
 Magnitude of corrector gradient =     0.0004966090
 Magnitude of analytic gradient =      0.0005214007
 Magnitude of difference =             0.0001229647
 Angle between gradients (degrees)=   13.5931
 Pt  9 Step number  10 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000048 at pt    47
 Maximum DWI gradient std dev =  0.521675015 at pt   145
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence NOT Met
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433503   -0.172131   -0.109390
      2          6           0        0.163526    0.496896    0.676197
      3          1           0        0.070396    0.071044    1.706540
      4          1           0        1.787200    0.213916   -0.113441
      5          1           0       -0.122018    1.567244    0.826672
      6          8           0        2.731535   -0.051033   -0.410882
      7          1           0        2.682187   -0.982465   -0.159594
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901380   0.000000
     3  H    2.370327   1.118763   0.000000
     4  H    3.243759   1.827545   2.506024   0.000000
     5  H    2.370998   1.117955   1.746369   2.521988   0.000000
     6  O    4.177691   2.841942   3.402945   1.024909   3.506155
     7  H    4.195005   3.038208   3.378430   1.494811   3.916287
                    6          7
     6  O    0.000000
     7  H    0.965996   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6289503      2.4634048      2.3023449
 Standard basis: CC-pVDZ (5D, 7F)
    66 basis functions,   165 primitive gaussians,    69 cartesian basis functions
    18 alpha electrons       18 beta electrons
       nuclear repulsion energy        87.8542482016 Hartrees.
 NAtoms=    7 NActive=    7 NUniq=    7 SFac= 1.00D+00 NAtFMM=   60 NAOKFM=F Big=F
 Integral buffers will be    131072 words long.
 Raffenetti 1 integral format.
 Two-electron integral symmetry is turned off.
 One-electron integrals computed using PRISM.
 NBasis=    66 RedAO= T EigKep=  1.93D-02  NBF=    66
 NBsUse=    66 1.00D-06 EigRej= -1.00D+00 NBFU=    66
 Initial guess from the checkpoint file:  "/localscratch/rjackson.12067818.0/Gau-8784.chk"
 B after Tr=    -0.000043    0.000015    0.000009
         Rot=    1.000000    0.000046   -0.000001   -0.000004 Ang=   0.01 deg.
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         5 AccDes= 0.00D+00
 Harris functional with IExCor=  205 and IRadAn=       5 diagonalized for initial guess.
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         5 IDoV= 1 UseB2=F ITyADJ=14
 ICtDFT=  3500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 FoFCou: FMM=F IPFlag=           0 FMFlag=      100000 FMFlg1=           0
         NFxFlg=           0 DoJE=T BraDBF=F KetDBF=T FulRan=T
         wScrn=  0.000000 ICntrl=     500 IOpCl=  0 I1Cent=   200000004 NGrid=           0
         NMat0=    1 NMatS0=      1 NMatT0=    0 NMatD0=    1 NMtDS0=    0 NMtDT0=    0
 Symmetry not used in FoFCou.
 Keep R1 ints in memory in canonical form, NReq=3411075.
 Requested convergence on RMS density matrix=1.00D-08 within 256 cycles.
 Requested convergence on MAX density matrix=1.00D-06.
 Requested convergence on             energy=1.00D-06.
 No special actions if energy rises.
 SCF Done:  E(RHF) =  -574.507914034     A.U. after    7 cycles
            NFock=  7  Conv=0.52D-08     -V/T= 2.0000
 ExpMin= 1.22D-01 ExpMax= 1.28D+05 ExpMxC= 1.24D+03 IAcc=3 IRadAn=         7 AccDes= 0.00D+00
 HarFok:  IExCor=  205 AccDes= 0.00D+00 IRadAn=         7 IDoV=-2 UseB2=F ITyADJ=14
 ICtDFT= 12500011 ScaDFX=  1.000000  1.000000  1.000000  1.000000
 Range of M.O.s used for correlation:     8    66
 NBasis=    66 NAE=    18 NBE=    18 NFC=     7 NFV=     0
 NROrb=     59 NOA=    11 NOB=    11 NVA=    48 NVB=    48
 Fully direct method using O(ONN) memory.
 JobTyp=1 Pass  1:  I=   8 to  18 NPSUse=  1 ParTrn=F ParDer=F DoDerP=T.
 Spin components of T(2) and E(2):
     alpha-alpha T2 =       0.2035237138D-01 E2=     -0.6192806598D-01
     alpha-beta  T2 =       0.1202546910D+00 E2=     -0.3696643352D+00
     beta-beta   T2 =       0.2035237138D-01 E2=     -0.6192806598D-01
 ANorm=    0.1077478275D+01
 E2 =    -0.4935204672D+00 EUMP2 =    -0.57500143450145D+03
          IDoAtm=1111111
          Differentiating once with respect to electric field.
                with respect to dipole field.
          Differentiating once with respect to nuclear coordinates.
 Keep R1 ints in memory in canonical form, NReq=3353394.
          There are     1 degrees of freedom in the 1st order CPHF.  IDoFFX=0 NUNeed=     1.
 LinEq1:  Iter=  0 NonCon=     1 RMS=4.48D-03 Max=4.71D-02 NDo=     1
 AX will form     1 AO Fock derivatives at one time.
 LinEq1:  Iter=  1 NonCon=     1 RMS=1.28D-03 Max=1.34D-02 NDo=     1
 LinEq1:  Iter=  2 NonCon=     1 RMS=4.16D-04 Max=4.86D-03 NDo=     1
 LinEq1:  Iter=  3 NonCon=     1 RMS=7.22D-05 Max=5.93D-04 NDo=     1
 LinEq1:  Iter=  4 NonCon=     1 RMS=2.49D-05 Max=2.19D-04 NDo=     1
 LinEq1:  Iter=  5 NonCon=     1 RMS=7.61D-06 Max=6.10D-05 NDo=     1
 LinEq1:  Iter=  6 NonCon=     1 RMS=1.77D-06 Max=2.25D-05 NDo=     1
 LinEq1:  Iter=  7 NonCon=     1 RMS=4.32D-07 Max=7.19D-06 NDo=     1
 LinEq1:  Iter=  8 NonCon=     1 RMS=1.33D-07 Max=1.26D-06 NDo=     1
 LinEq1:  Iter=  9 NonCon=     1 RMS=3.00D-08 Max=3.72D-07 NDo=     1
 LinEq1:  Iter= 10 NonCon=     1 RMS=6.54D-09 Max=6.24D-08 NDo=     1
 LinEq1:  Iter= 11 NonCon=     1 RMS=1.31D-09 Max=8.72D-09 NDo=     1
 LinEq1:  Iter= 12 NonCon=     1 RMS=2.31D-10 Max=1.46D-09 NDo=     1
 LinEq1:  Iter= 13 NonCon=     0 RMS=5.43D-11 Max=3.24D-10 NDo=     1
 Linear equations converged to 1.000D-10 1.000D-09 after    13 iterations.
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
      1       17           0.000345132   -0.000109709   -0.000105608
      2        6          -0.000061796    0.000167578    0.000161366
      3        1          -0.000013611    0.000017176    0.000011157
      4        1           0.000002907    0.000006942    0.000013316
      5        1          -0.000013264    0.000008966    0.000002799
      6        8          -0.000203742    0.000011162   -0.000016100
      7        1          -0.000055625   -0.000102114   -0.000066931
 -------------------------------------------------------------------
 Cartesian Forces:  Max     0.000345132 RMS     0.000111536
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
 Error in corrector energy =          -0.0000000211
 Magnitude of corrector gradient =     0.0005099643
 Magnitude of analytic gradient =      0.0005111202
 Magnitude of difference =             0.0001128445
 Angle between gradients (degrees)=   12.6893
 Pt  9 Step number  11 out of a maximum of  20
 Modified Bulirsch-Stoer Extrapolation Cycles:
    EPS =    0.000000333333333
 Maximum DWI energy   std dev =  0.000000054 at pt    48
 Maximum DWI gradient std dev =  0.428266614 at pt   147
 CORRECTOR INTEGRATION CONVERGENCE:
   Recorrection delta-x convergence threshold:    0.001826
   Delta-x Convergence Met
 Point Number:   9          Path Number:   1
   CHANGE IN THE REACTION COORDINATE =    0.06569
   NET REACTION COORDINATE UP TO THIS POINT =    0.59231
  # OF POINTS ALONG THE PATH =   9
  # OF STEPS =  11

 Calculating another point on the path.
 PES minimum detected within a second-order step.
 Calculation of FORWARD path complete.
 Reaction path calculation complete.
 
 Energies reported relative to the TS energy of        -575.001338
 --------------------------------------------------------------------------
    Summary of reaction path following
 --------------------------------------------------------------------------
                        Energy    RxCoord
   1                    0.00000   0.00000
   2                   -0.00001   0.06552
   3                   -0.00002   0.13140
   4                   -0.00003   0.19729
   5                   -0.00004   0.26318
   6                   -0.00006   0.32906
   7                   -0.00007   0.39494
   8                   -0.00008   0.46076
   9                   -0.00009   0.52662
  10                   -0.00010   0.59231
 --------------------------------------------------------------------------
 
 Total number of points:                    9
 Total number of gradient calculations:    30
 Total number of Hessian calculations:      1
 IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC-IRC
                          Input orientation:                          
 ---------------------------------------------------------------------
 Center     Atomic      Atomic             Coordinates (Angstroms)
 Number     Number       Type             X           Y           Z
 ---------------------------------------------------------------------
      1         17           0       -1.433503   -0.172131   -0.109390
      2          6           0        0.163526    0.496896    0.676197
      3          1           0        0.070396    0.071044    1.706540
      4          1           0        1.787200    0.213916   -0.113441
      5          1           0       -0.122018    1.567244    0.826672
      6          8           0        2.731535   -0.051033   -0.410882
      7          1           0        2.682187   -0.982465   -0.159594
 ---------------------------------------------------------------------
                    Distance matrix (angstroms):
                    1          2          3          4          5
     1  Cl   0.000000
     2  C    1.901380   0.000000
     3  H    2.370327   1.118763   0.000000
     4  H    3.243759   1.827545   2.506024   0.000000
     5  H    2.370998   1.117955   1.746369   2.521988   0.000000
     6  O    4.177691   2.841942   3.402945   1.024909   3.506155
     7  H    4.195005   3.038208   3.378430   1.494811   3.916287
                    6          7
     6  O    0.000000
     7  H    0.965996   0.000000
 Symmetry turned off by external request.
 Stoichiometry    CH4ClO(1-)
 Framework group  C1[X(CH4ClO)]
 Deg. of freedom    15
 Full point group                 C1      NOp   1
 Rotational constants (GHZ):     26.6289503      2.4634048      2.3023449

 **********************************************************************

            Population analysis using the SCF density.

 **********************************************************************

 Alpha  occ. eigenvalues -- -104.58694 -20.32450 -11.02533 -10.31218  -7.77949
 Alpha  occ. eigenvalues --   -7.77720  -7.77704  -1.10277  -0.86298  -0.63234
 Alpha  occ. eigenvalues --   -0.45040  -0.36740  -0.33697  -0.28738  -0.27252
 Alpha  occ. eigenvalues --   -0.24296  -0.20767  -0.10656
 Alpha virt. eigenvalues --    0.36210   0.39984   0.43182   0.44734   0.58902
 Alpha virt. eigenvalues --    0.80918   0.86175   0.92523   0.93160   0.98403
 Alpha virt. eigenvalues --    0.99233   1.01979   1.05759   1.08377   1.08837
 Alpha virt. eigenvalues --    1.16914   1.18007   1.20709   1.23089   1.24736
 Alpha virt. eigenvalues --    1.38892   1.42419   1.45054   1.51478   1.56367
 Alpha virt. eigenvalues --    1.60030   1.62708   1.66786   1.75213   1.85270
 Alpha virt. eigenvalues --    1.93146   1.99995   2.16850   2.17804   2.22464
 Alpha virt. eigenvalues --    2.23987   2.34710   2.36192   2.56405   2.65774
 Alpha virt. eigenvalues --    2.83274   2.95863   2.98777   3.49268   3.52608
 Alpha virt. eigenvalues --    3.70204   4.03898   4.39046
          Condensed to atoms (all electrons):
               1          2          3          4          5          6
     1  Cl  17.431285   0.119828  -0.051120  -0.001889  -0.049850   0.000767
     2  C    0.119828   5.529334   0.373620   0.059426   0.375419  -0.060588
     3  H   -0.051120   0.373620   0.749185  -0.002864  -0.047367   0.001155
     4  H   -0.001889   0.059426  -0.002864   0.373605  -0.002964   0.367159
     5  H   -0.049850   0.375419  -0.047367  -0.002964   0.741105   0.001134
     6  O    0.000767  -0.060588   0.001155   0.367159   0.001134   7.802308
     7  H   -0.000573   0.018379  -0.000521  -0.057732  -0.000089   0.345223
               7
     1  Cl  -0.000573
     2  C    0.018379
     3  H   -0.000521
     4  H   -0.057732
     5  H   -0.000089
     6  O    0.345223
     7  H    0.600075
 Mulliken charges:
               1
     1  Cl  -0.448448
     2  C   -0.415417
     3  H   -0.022087
     4  H    0.265259
     5  H   -0.017387
     6  O   -0.457157
     7  H    0.095238
 Sum of Mulliken charges =  -1.00000
 Mulliken charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.448448
     2  C   -0.454891
     6  O   -0.096660
 APT charges:
               1
     1  Cl  -0.328411
     2  C   -0.928116
     3  H    0.190942
     4  H   -0.123526
     5  H    0.204425
     6  O   -0.210444
     7  H    0.195131
 Sum of APT charges =  -1.00000
 APT charges with hydrogens summed into heavy atoms:
               1
     1  Cl  -0.328411
     2  C   -0.532750
     6  O   -0.138839
 Electronic spatial extent (au):  <R**2>=            503.3819
 Charge=             -1.0000 electrons
 Dipole moment (field-independent basis, Debye):
    X=             -1.6370    Y=             -1.1488    Z=              0.7673  Tot=              2.1420
 Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -48.8020   YY=            -27.8652   ZZ=            -30.7276
   XY=             -3.7439   XZ=              2.8650   YZ=             -0.3605
 Traceless Quadrupole moment (field-independent basis, Debye-Ang):
   XX=            -13.0037   YY=              7.9331   ZZ=              5.0707
   XY=             -3.7439   XZ=              2.8650   YZ=             -0.3605
 Octapole moment (field-independent basis, Debye-Ang**2):
  XXX=            -38.1237  YYY=             -6.0905  ZZZ=             -7.1116  XYY=              4.4421
  XXY=             -9.8418  XXZ=              6.6054  XZZ=             -2.5152  YZZ=             -1.8750
  YYZ=             -2.9041  XYZ=             -0.0220
 Hexadecapole moment (field-independent basis, Debye-Ang**3):
 XXXX=           -646.1697 YYYY=            -56.6605 ZZZZ=            -75.7895 XXXY=            -28.4645
 XXXZ=             40.8618 YYYX=             -9.9616 YYYZ=            -11.4223 ZZZX=             14.4764
 ZZZY=            -12.4109 XXYY=            -81.6125 XXZZ=           -103.2572 YYZZ=            -22.3848
 XXYZ=             -2.7412 YYXZ=              3.5817 ZZXY=             -0.9214
 N-N= 8.785424820164D+01 E-N=-1.550326396953D+03  KE= 5.745073203570D+02
  Exact polarizability:   0.000   0.000   0.000   0.000   0.000   0.000
 Approx polarizability:  31.097   2.247  25.181   2.851   0.929  22.744

 This type of calculation cannot be archived.


 Cherishing children is the mark of a civilized society.
 -- Joan Ganz Cooney
 Job cpu time:       0 days  0 hours  3 minutes 27.4 seconds.
 File lengths (MBytes):  RWF=    214 Int=      0 D2E=      0 Chk=      2 Scr=      1
 Normal termination of Gaussian 09 at Tue Feb 26 15:48:49 2019.
