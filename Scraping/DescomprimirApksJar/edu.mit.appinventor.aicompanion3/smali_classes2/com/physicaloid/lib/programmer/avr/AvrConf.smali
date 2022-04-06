.class public Lcom/physicaloid/lib/programmer/avr/AvrConf;
.super Ljava/lang/Object;
.source "AvrConf.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public bs2:B

.field public bytedelay:B

.field public cmdexedelay:B

.field public desc:Ljava/lang/String;

.field public eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

.field public efuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

.field public flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

.field public fuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

.field public has_jtag:Z

.field public hfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

.field public lfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

.field public lock:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

.field public pagel:B

.field public pollindex:B

.field public pollmethod:B

.field public pollvalue:B

.field public postdelay:B

.field public predelay:B

.field public signature:[B

.field public stabdelay:B

.field public stk500_devcode:B

.field public synchloops:B

.field public timeout:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    const-class v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/physicaloid/lib/Boards;)V
    .locals 2
    .param p1, "board"    # Lcom/physicaloid/lib/Boards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iget v0, p1, Lcom/physicaloid/lib/Boards;->chipType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->setATmega168()V

    .line 483
    :goto_0
    return-void

    .line 474
    :cond_0
    iget v0, p1, Lcom/physicaloid/lib/Boards;->chipType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->setATmega328P()V

    goto :goto_0

    .line 476
    :cond_1
    iget v0, p1, Lcom/physicaloid/lib/Boards;->chipType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->setATmega1284P()V

    goto :goto_0

    .line 478
    :cond_2
    iget v0, p1, Lcom/physicaloid/lib/Boards;->chipType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 479
    invoke-direct {p0}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->setATmega2560()V

    goto :goto_0

    .line 481
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not support AVR type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSignature(III)[B
    .locals 3
    .param p1, "sig1"    # I
    .param p2, "sig2"    # I
    .param p3, "sig3"    # I

    .prologue
    .line 486
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private setATmega1284P()V
    .locals 20

    .prologue
    .line 552
    const-string v1, "ATMEGA1284P"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->desc:Ljava/lang/String;

    .line 553
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->has_jtag:Z

    .line 554
    const/16 v1, -0x7e

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->stk500_devcode:B

    .line 555
    const/16 v1, 0x1e

    const/16 v2, 0x97

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->createSignature(III)[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->signature:[B

    .line 556
    const/16 v1, -0x29

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pagel:B

    .line 557
    const/16 v1, -0x60

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bs2:B

    .line 559
    const/16 v1, -0x38

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->timeout:B

    .line 560
    const/16 v1, 0x64

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->stabdelay:B

    .line 561
    const/16 v1, 0x19

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->cmdexedelay:B

    .line 562
    const/16 v1, 0x20

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->synchloops:B

    .line 563
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bytedelay:B

    .line 564
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollindex:B

    .line 565
    const/16 v1, 0x53

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollvalue:B

    .line 566
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->predelay:B

    .line 567
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->postdelay:B

    .line 568
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollmethod:B

    .line 570
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    .line 571
    const/4 v2, 0x0

    .line 572
    const/16 v3, 0x8

    .line 573
    const/16 v4, 0x1000

    .line 574
    const/16 v5, 0x2328

    .line 575
    const/16 v6, 0x2328

    .line 576
    const/16 v7, 0xff

    .line 577
    const/16 v8, 0xff

    .line 578
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, " 1 0 1 0 0 0 0 0"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 579
    const-string v11, " 0 0 x x a11 a10 a9 a8"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 580
    const-string v11, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 581
    const-string v11, " o o o o o o o o"

    aput-object v11, v9, v10

    .line 582
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, " 1 1 0 0 0 0 0 0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 583
    const-string v12, " 0 0 x x a11 a10 a9 a8"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 584
    const-string v12, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 585
    const-string v12, " i i i i i i i i"

    aput-object v12, v10, v11

    .line 586
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, " 1 1 0 0 0 0 0 1"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 587
    const-string v13, " 0 0 0 0 0 0 0 0"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 588
    const-string v13, " 0 0 0 0 0 a2 a1 a0"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 589
    const-string v13, " i i i i i i i i"

    aput-object v13, v11, v12

    .line 590
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, " 1 1 0 0 0 0 1 0"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 591
    const-string v14, " 0 0 x x a11 a10 a9 a8"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 592
    const-string v14, " a7 a6 a5 a4 a3 0 0 0"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 593
    const-string v14, " x x x x x x x x"

    aput-object v14, v12, v13

    .line 594
    const/16 v13, 0x41

    .line 595
    const/16 v14, 0xa

    .line 596
    const/16 v15, 0x80

    .line 597
    const/16 v16, 0x100

    invoke-direct/range {v1 .. v16}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;-><init>(ZIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V

    .line 570
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    .line 599
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    .line 600
    const/4 v2, 0x1

    .line 601
    const/high16 v3, 0x20000

    .line 602
    const/16 v4, 0x100

    .line 603
    const/16 v5, 0x200

    .line 604
    const/16 v6, 0x1194

    .line 605
    const/16 v7, 0x1194

    .line 606
    const/16 v8, 0xff

    .line 607
    const/16 v9, 0xff

    .line 608
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, " 0 0 1 0 0 0 0 0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 609
    const-string v12, " a15 a14 a13 a12 a11 a10 a9 a8"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 610
    const-string v12, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 611
    const-string v12, " o o o o o o o o"

    aput-object v12, v10, v11

    .line 612
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, " 0 0 1 0 1 0 0 0"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 613
    const-string v13, " a15 a14 a13 a12 a11 a10 a9 a8"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 614
    const-string v13, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 615
    const-string v13, " o o o o o o o o"

    aput-object v13, v11, v12

    .line 616
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, " 0 1 0 0 0 0 0 0"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 617
    const-string v14, " 0 0 x x x x x x"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 618
    const-string v14, " x a6 a5 a4 a3 a2 a1 a0"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 619
    const-string v14, " i i i i i i i i"

    aput-object v14, v12, v13

    .line 620
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, " 0 1 0 0 1 0 0 0"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 621
    const-string v15, " 0 0 x x x x x x"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 622
    const-string v15, " x a6 a5 a4 a3 a2 a1 a0"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 623
    const-string v15, " i i i i i i i i"

    aput-object v15, v13, v14

    .line 625
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " 0 1 0 0 1 1 0 0"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 626
    const-string v16, " a15 a14 a13 a12 a11 a10 a9 a8"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 627
    const-string v16, " a7 x x x x x x x"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 628
    const-string v16, " x x x x x x x x"

    aput-object v16, v14, v15

    .line 629
    const/4 v15, 0x0

    .line 630
    const/16 v16, 0x41

    .line 631
    const/16 v17, 0xa

    .line 632
    const/16 v18, 0x100

    .line 633
    const/16 v19, 0x100

    invoke-direct/range {v1 .. v19}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;-><init>(ZIIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V

    .line 599
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    .line 635
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 636
    const-string v2, ""

    .line 637
    const/4 v3, 0x0

    .line 638
    const/4 v4, 0x0

    .line 639
    const/4 v5, 0x0

    .line 640
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 641
    const-string v8, ""

    aput-object v8, v6, v7

    .line 642
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 643
    const-string v9, ""

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->fuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 645
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 646
    const-string v2, "lfuse"

    .line 647
    const/4 v3, 0x1

    .line 648
    const/16 v4, 0x2328

    .line 649
    const/16 v5, 0x2328

    .line 650
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 651
    const-string v8, "x x x x x x x x o o o o o o o o"

    aput-object v8, v6, v7

    .line 652
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 0 0 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 653
    const-string v9, "x x x x x x x x i i i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 655
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 656
    const-string v2, "hfuse"

    .line 657
    const/4 v3, 0x1

    .line 658
    const/16 v4, 0x2328

    .line 659
    const/16 v5, 0x2328

    .line 660
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 1 0 0 0 0 0 0 0 1 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 661
    const-string v8, "x x x x x x x x o o o o o o o o"

    aput-object v8, v6, v7

    .line 662
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 663
    const-string v9, "x x x x x x x x i i i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->hfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 665
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 666
    const-string v2, "efuse"

    .line 667
    const/4 v3, 0x1

    .line 668
    const/16 v4, 0x2328

    .line 669
    const/16 v5, 0x2328

    .line 670
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 0 0 0 0 0 0 0 0 1 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 671
    const-string v8, "x x x x x x x x o o o o o o o o"

    aput-object v8, v6, v7

    .line 672
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 673
    const-string v9, "x x x x x x x x 1 1 1 1 1 i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->efuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 675
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 676
    const-string v2, "lock"

    .line 677
    const/4 v3, 0x1

    .line 678
    const/16 v4, 0x2328

    .line 679
    const/16 v5, 0x2328

    .line 680
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 681
    const-string v8, "x x x x x x x x x x o o  o o o o"

    aput-object v8, v6, v7

    .line 682
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 1 1 x x x x x"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 683
    const-string v9, "x x x x x x x x 1 1 i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lock:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 684
    return-void
.end method

.method private setATmega168()V
    .locals 20

    .prologue
    .line 809
    const-string v1, "ATMEGA168"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->desc:Ljava/lang/String;

    .line 810
    const/16 v1, -0x7a

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->stk500_devcode:B

    .line 811
    const/16 v1, -0x29

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pagel:B

    .line 812
    const/16 v1, -0x3e

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bs2:B

    .line 813
    const/16 v1, 0x1e

    const/16 v2, 0x94

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->createSignature(III)[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->signature:[B

    .line 815
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x200

    const/16 v5, 0xe10

    const/16 v6, 0xe10

    const/16 v7, 0xff

    const/16 v8, 0xff

    .line 816
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, " 1 0 1 0 0 0 0 0"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, " 0 0 0 x x x x a8"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 817
    const-string v11, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, " o o o o o o o o"

    aput-object v11, v9, v10

    .line 818
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, " 1 1 0 0 0 0 0 0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, " 0 0 0 x x x x a8"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 819
    const-string v12, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, " i i i i i i i i"

    aput-object v12, v10, v11

    .line 820
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, " 1 1 0 0 0 0 0 1"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, " 0 0 0 0 0 0 0 0"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 821
    const-string v13, " 0 0 0 0 0 0 a1 a0"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, " i i i i i i i i"

    aput-object v13, v11, v12

    .line 822
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, " 1 1 0 0 0 0 1 0"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, " 0 0 x x x x x a8"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 823
    const-string v14, " a7 a6 a5 a4 a3 a2 0 0"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, " x x x x x x x x"

    aput-object v14, v12, v13

    const/16 v13, 0x41

    .line 824
    const/16 v14, 0x14

    const/4 v15, 0x4

    const/16 v16, 0x100

    invoke-direct/range {v1 .. v16}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;-><init>(ZIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V

    .line 815
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    .line 826
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    const/4 v2, 0x1

    const/16 v3, 0x4000

    const/16 v4, 0x80

    const/16 v5, 0x100

    const/16 v6, 0x1194

    const/16 v7, 0x1194

    const/16 v8, 0xff

    .line 827
    const/16 v9, 0xff

    .line 828
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, " 0  0  1  0  0  0  0  0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "  0  0  0 a12 a11 a10 a9 a8"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 829
    const-string v12, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "  o  o  o  o  o  o  o  o"

    aput-object v12, v10, v11

    .line 830
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, " 0 0 1 0 1 0 0 0"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, " 0 0 0 a12 a11 a10 a9 a8"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 831
    const-string v13, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, " o o o o o o o o"

    aput-object v13, v11, v12

    .line 832
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, " 0 1 0 0 0 0 0 0"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, " 0 0 0 x x x x x"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 833
    const-string v14, " x x a5 a4 a3 a2 a1 a0"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string v14, " i i i i i i i i"

    aput-object v14, v12, v13

    .line 834
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, " 0 1 0 0 1 0 0 0"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, " 0 0 0 x x x x x"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 835
    const-string v15, " x x a5 a4 a3 a2 a1 a0"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string v15, " i i i i i i i i"

    aput-object v15, v13, v14

    .line 836
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " 0 1 0 0 1 1 0 0"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, " 0 0 0 a12 a11 a10 a9 a8"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 837
    const-string v16, " a7 a6 x x x x x x"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, " x x x x x x x x"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x41

    const/16 v17, 0x6

    const/16 v18, 0x80

    const/16 v19, 0x100

    invoke-direct/range {v1 .. v19}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;-><init>(ZIIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V

    .line 826
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    .line 839
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    .line 840
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->fuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 842
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    const-string v2, "lfuse"

    const/4 v3, 0x1

    const/16 v4, 0x1194

    const/16 v5, 0x1194

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 843
    const-string v8, "0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 844
    const-string v8, "x x x x x x x x o o o o o o o o"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 845
    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 0 0 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 846
    const-string v9, "x x x x x x x x i i i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 842
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 848
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    const-string v2, "hfuse"

    const/4 v3, 0x1

    const/16 v4, 0x1194

    const/16 v5, 0x1194

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 849
    const-string v8, "0 1 0 1 1 0 0 0 0 0 0 0 1 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 850
    const-string v8, "x x x x x x x x o o o o o o o o"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 851
    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 852
    const-string v9, "x x x x x x x x i i i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->hfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 854
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    const-string v2, "efuse"

    const/4 v3, 0x1

    const/16 v4, 0x1194

    const/16 v5, 0x1194

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 855
    const-string v8, "0 1 0 1 0 0 0 0 0 0 0 0 1 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 856
    const-string v8, "x x x x x x x x x x x x x o o o"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 857
    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 858
    const-string v9, "x x x x x x x x x x x x x i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->efuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 860
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    const-string v2, "lock"

    const/4 v3, 0x1

    const/16 v4, 0x1194

    const/16 v5, 0x1194

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 861
    const-string v8, "0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 862
    const-string v8, "x x x x x x x x x x o o o o o o"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 863
    const-string v9, "1 0 1 0 1 1 0 0 1 1 1 x x x x x"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 864
    const-string v9, "x x x x x x x x 1 1 i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lock:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 865
    return-void
.end method

.method private setATmega2560()V
    .locals 20

    .prologue
    .line 490
    const-string v1, "ATMEGA2560"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->desc:Ljava/lang/String;

    .line 491
    const/16 v1, 0x1e

    const/16 v2, 0x98

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->createSignature(III)[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->signature:[B

    .line 492
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->has_jtag:Z

    .line 493
    const/16 v1, -0x29

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pagel:B

    .line 494
    const/16 v1, -0x60

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bs2:B

    .line 496
    const/16 v1, -0x38

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->timeout:B

    .line 497
    const/16 v1, 0x64

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->stabdelay:B

    .line 498
    const/16 v1, 0x19

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->cmdexedelay:B

    .line 499
    const/16 v1, 0x20

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->synchloops:B

    .line 500
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bytedelay:B

    .line 501
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollindex:B

    .line 502
    const/16 v1, 0x53

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollvalue:B

    .line 503
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->predelay:B

    .line 504
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->postdelay:B

    .line 505
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pollmethod:B

    .line 507
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    .line 508
    const/4 v2, 0x1

    .line 509
    const/high16 v3, 0x40000

    .line 510
    const/16 v4, 0x100

    .line 511
    const/16 v5, 0x400

    .line 512
    const/16 v6, 0x1194

    .line 513
    const/16 v7, 0x1194

    .line 514
    const/4 v8, 0x0

    .line 515
    const/4 v9, 0x0

    .line 516
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "   0   0   1   0     0   0   0   0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 517
    const-string v12, " a15 a14 a13 a12   a11 a10  a9  a8"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 518
    const-string v12, "  a7  a6  a5  a4    a3  a2  a1  a0"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 519
    const-string v12, "   o   o   o   o     o   o   o   o"

    aput-object v12, v10, v11

    .line 521
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "   0   0   1   0     1   0   0   0"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 522
    const-string v13, " a15 a14 a13 a12   a11 a10  a9  a8"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 523
    const-string v13, "  a7  a6  a5  a4    a3  a2  a1  a0"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 524
    const-string v13, "   o   o   o   o     o   o   o   o"

    aput-object v13, v11, v12

    .line 526
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "   0   1   0   0     0   0   0   0"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 527
    const-string v14, "   x   x   x   x     x   x   x   x"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 528
    const-string v14, "   x  a6  a5  a4    a3  a2  a1  a0"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 529
    const-string v14, "   i   i   i   i     i   i   i   i"

    aput-object v14, v12, v13

    .line 531
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "   0   1   0   0     1   0   0   0"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 532
    const-string v15, "   x   x   x   x     x   x   x   x"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 533
    const-string v15, "   x  a6  a5  a4    a3  a2  a1  a0"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 534
    const-string v15, "   i   i   i   i     i   i   i   i"

    aput-object v15, v13, v14

    .line 536
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "   0   1   0   0     1   1   0   0"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 537
    const-string v16, " a15 a14 a13 a12   a11 a10  a9  a8"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 538
    const-string v16, "  a7   x   x   x     x   x   x   x"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 539
    const-string v16, "   x   x   x   x     x   x   x   x"

    aput-object v16, v14, v15

    .line 541
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "   0   1   0   0     1   1   0   1"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 542
    const-string v17, "   0   0   0   0     0   0   0   0"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    .line 543
    const-string v17, "   0   0   0   0     0   0   0 a16"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    .line 544
    const-string v17, "   0   0   0   0     0   0   0   0"

    aput-object v17, v15, v16

    .line 545
    const/16 v16, 0x41

    .line 546
    const/16 v17, 0xa

    .line 547
    const/16 v18, 0x100

    .line 548
    const/16 v19, 0x100

    invoke-direct/range {v1 .. v19}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;-><init>(ZIIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V

    .line 507
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    .line 549
    return-void
.end method

.method private setATmega328P()V
    .locals 20

    .prologue
    .line 687
    const-string v1, "ATMEGA328P"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->desc:Ljava/lang/String;

    .line 688
    const/16 v1, -0x7a

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->stk500_devcode:B

    .line 689
    const/16 v1, -0x29

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->pagel:B

    .line 690
    const/16 v1, -0x3e

    move-object/from16 v0, p0

    iput-byte v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->bs2:B

    .line 691
    const/16 v1, 0x1e

    const/16 v2, 0x95

    const/16 v3, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/physicaloid/lib/programmer/avr/AvrConf;->createSignature(III)[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->signature:[B

    .line 693
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    .line 694
    const/4 v2, 0x0

    .line 695
    const/4 v3, 0x4

    .line 696
    const/16 v4, 0x400

    .line 697
    const/16 v5, 0xe10

    .line 698
    const/16 v6, 0xe10

    .line 699
    const/16 v7, 0xff

    .line 700
    const/16 v8, 0xff

    .line 701
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, " 1 0 1 0 0 0 0 0"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 702
    const-string v11, " 0 0 0 x x x a9 a8"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 703
    const-string v11, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 704
    const-string v11, " o o o o o o o o"

    aput-object v11, v9, v10

    .line 705
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, " 1 1 0 0 0 0 0 0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 706
    const-string v12, " 0 0 0 x x x a9 a8"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 707
    const-string v12, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 708
    const-string v12, " i i i i i i i i"

    aput-object v12, v10, v11

    .line 709
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, " 1 1 0 0 0 0 0 1"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 710
    const-string v13, " 0 0 0 0 0 0 0 0"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 711
    const-string v13, " 0 0 0 0 0 0 a1 a0"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 712
    const-string v13, " i i i i i i i i"

    aput-object v13, v11, v12

    .line 713
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, " 1 1 0 0 0 0 1 0"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 714
    const-string v14, " 0 0 x x x x a9 a8"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 715
    const-string v14, " a7 a6 a5 a4 a3 a2 0 0"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 716
    const-string v14, " x x x x x x x x"

    aput-object v14, v12, v13

    .line 717
    const/16 v13, 0x41

    .line 718
    const/16 v14, 0x14

    .line 719
    const/4 v15, 0x4

    .line 720
    const/16 v16, 0x100

    invoke-direct/range {v1 .. v16}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;-><init>(ZIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V

    .line 693
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->eeprom:Lcom/physicaloid/lib/programmer/avr/AVRConfMemEEPROM;

    .line 722
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    .line 723
    const/4 v2, 0x1

    .line 724
    const v3, 0x8000

    .line 725
    const/16 v4, 0x80

    .line 726
    const/16 v5, 0x100

    .line 727
    const/16 v6, 0x1194

    .line 728
    const/16 v7, 0x1194

    .line 729
    const/16 v8, 0xff

    .line 730
    const/16 v9, 0xff

    .line 731
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, " 0 0 1 0 0 0 0 0"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 732
    const-string v12, " 0 0 a13 a12 a11 a10 a9 a8"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 733
    const-string v12, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 734
    const-string v12, " o o o o o o o o"

    aput-object v12, v10, v11

    .line 735
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, " 0 0 1 0 1 0 0 0"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 736
    const-string v13, " 0 0 a13 a12 a11 a10 a9 a8"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 737
    const-string v13, " a7 a6 a5 a4 a3 a2 a1 a0"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 738
    const-string v13, " o o o o o o o o"

    aput-object v13, v11, v12

    .line 739
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, " 0 1 0 0 0 0 0 0"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 740
    const-string v14, " 0 0 0 x x x x x"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 741
    const-string v14, " x x a5 a4 a3 a2 a1 a0"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 742
    const-string v14, " i i i i i i i i"

    aput-object v14, v12, v13

    .line 743
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, " 0 1 0 0 1 0 0 0"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 744
    const-string v15, " 0 0 0 x x x x x"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 745
    const-string v15, " x x a5 a4 a3 a2 a1 a0"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 746
    const-string v15, " i i i i i i i i"

    aput-object v15, v13, v14

    .line 747
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " 0 1 0 0 1 1 0 0"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 748
    const-string v16, " 0 0 a13 a12 a11 a10 a9 a8"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 749
    const-string v16, " a7 a6 x x x x x x"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 750
    const-string v16, " x x x x x x x x"

    aput-object v16, v14, v15

    .line 751
    const/4 v15, 0x0

    .line 752
    const/16 v16, 0x41

    .line 753
    const/16 v17, 0x6

    .line 754
    const/16 v18, 0x80

    .line 755
    const/16 v19, 0x100

    invoke-direct/range {v1 .. v19}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;-><init>(ZIIIIIII[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;IIII)V

    .line 722
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->flash:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFlash;

    .line 757
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 758
    const-string v2, ""

    .line 759
    const/4 v3, 0x0

    .line 760
    const/4 v4, 0x0

    .line 761
    const/4 v5, 0x0

    .line 762
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 763
    const-string v8, ""

    aput-object v8, v6, v7

    .line 764
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 765
    const-string v9, ""

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->fuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 767
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 768
    const-string v2, "lfuse"

    .line 769
    const/4 v3, 0x1

    .line 770
    const/16 v4, 0x1194

    .line 771
    const/16 v5, 0x1194

    .line 772
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 773
    const-string v8, "x x x x x x x x o o o o o o o o"

    aput-object v8, v6, v7

    .line 774
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 0 0 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 775
    const-string v9, "x x x x x x x x i i i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 777
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 778
    const-string v2, "hfuse"

    .line 779
    const/4 v3, 0x1

    .line 780
    const/16 v4, 0x1194

    .line 781
    const/16 v5, 0x1194

    .line 782
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 1 0 0 0 0 0 0 0 1 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 783
    const-string v8, "x x x x x x x x o o o o o o o o"

    aput-object v8, v6, v7

    .line 784
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 785
    const-string v9, "x x x x x x x x i i i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->hfuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 787
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 788
    const-string v2, "efuse"

    .line 789
    const/4 v3, 0x1

    .line 790
    const/16 v4, 0x1194

    .line 791
    const/16 v5, 0x1194

    .line 792
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 0 0 0 0 0 0 0 0 1 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 793
    const-string v8, "x x x x x x x x x x x x x o o o"

    aput-object v8, v6, v7

    .line 794
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 795
    const-string v9, "x x x x x x x x x x x x x i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->efuse:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 797
    new-instance v1, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 798
    const-string v2, "lock"

    .line 799
    const/4 v3, 0x1

    .line 800
    const/16 v4, 0x1194

    .line 801
    const/16 v5, 0x1194

    .line 802
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 803
    const-string v8, "x x x x x x x x x x o o o o o o"

    aput-object v8, v6, v7

    .line 804
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "1 0 1 0 1 1 0 0 1 1 1 x x x x x"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 805
    const-string v9, "x x x x x x x x 1 1 i i i i i i"

    aput-object v9, v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;-><init>(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/physicaloid/lib/programmer/avr/AvrConf;->lock:Lcom/physicaloid/lib/programmer/avr/AVRConfMemFuse;

    .line 806
    return-void
.end method
