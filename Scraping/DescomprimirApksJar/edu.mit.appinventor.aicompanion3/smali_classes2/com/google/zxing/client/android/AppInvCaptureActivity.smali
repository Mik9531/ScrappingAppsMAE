.class public final Lcom/google/zxing/client/android/AppInvCaptureActivity;
.super Landroid/app/Activity;
.source "AppInvCaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAW_PARAM:Ljava/lang/String; = "raw"

.field private static final RETURN_CODE_PLACEHOLDER:Ljava/lang/String; = "{CODE}"

.field private static final RETURN_URL_PARAM:Ljava/lang/String; = "ret"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private frameLayout:Landroid/widget/FrameLayout;

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private lastResult:Lcom/google/zxing/Result;

.field private returnRaw:Z

.field private returnUrlTemplate:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private surfaceView:Landroid/view/SurfaceView;

.field private viewLayout:Landroid/widget/LinearLayout;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    const-class v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    .line 93
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v0, :cond_0

    .line 266
    iput-object p2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 277
    :goto_0
    return-void

    .line 268
    :cond_0
    if-eqz p2, :cond_1

    .line 269
    iput-object p2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 275
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 2

    .prologue
    .line 540
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Scanner"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    const-string v1, "Camera Framework Bug"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 546
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 363
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 9
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 339
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 340
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 341
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 342
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 343
    .local v1, "paint":Landroid/graphics/Paint;
    const v5, -0x3f663400

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    array-length v5, v3

    if-ne v5, v8, :cond_1

    .line 345
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 346
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 360
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 348
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, v6, :cond_2

    .line 349
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v6, :cond_3

    .line 351
    :cond_2
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 352
    aget-object v4, v3, v8

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v0, v1, v4, v5}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 354
    :cond_3
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 355
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 356
    .local v2, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 18
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "resultHandler"    # Lcom/google/zxing/client/android/result/ResultHandler;
    .param p3, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 444
    if-eqz p3, :cond_0

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    if-nez v14, :cond_6

    .line 450
    const-wide/16 v12, 0x5dc

    .line 456
    .local v12, "resultDurationMS":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->copyToClipboard:Z

    if-eqz v14, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v14

    if-nez v14, :cond_1

    .line 457
    const-string v14, "clipboard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/ClipboardManager;

    .line 458
    .local v4, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v11

    .line 459
    .local v11, "text":Ljava/lang/CharSequence;
    if-eqz v11, :cond_1

    .line 460
    invoke-virtual {v4, v11}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .end local v4    # "clipboard":Landroid/text/ClipboardManager;
    .end local v11    # "text":Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v15, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v14, v15, :cond_8

    .line 468
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v14, 0x80000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    const-string v14, "SCAN_RESULT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v14, "SCAN_RESULT_FORMAT"

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v10

    .line 473
    .local v10, "rawBytes":[B
    if-eqz v10, :cond_2

    array-length v14, v10

    if-lez v14, :cond_2

    .line 474
    const-string v14, "SCAN_RESULT_BYTES"

    invoke-virtual {v7, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 476
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v8

    .line 477
    .local v8, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    if-eqz v8, :cond_7

    .line 478
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 479
    const-string v14, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v15, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 480
    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 479
    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    :cond_3
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 483
    .local v9, "orientation":Ljava/lang/Integer;
    if-eqz v9, :cond_4

    .line 484
    const-string v14, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    :cond_4
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 487
    .local v5, "ecLevel":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 488
    const-string v14, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v7, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    :cond_5
    sget-object v14, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 491
    .local v3, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz v3, :cond_7

    .line 492
    const/4 v6, 0x0

    .line 493
    .local v6, "i":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 494
    .local v2, "byteSegment":[B
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 495
    add-int/lit8 v6, v6, 0x1

    .line 496
    goto :goto_1

    .line 452
    .end local v2    # "byteSegment":[B
    .end local v3    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v5    # "ecLevel":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v9    # "orientation":Ljava/lang/Integer;
    .end local v10    # "rawBytes":[B
    .end local v12    # "resultDurationMS":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v16, 0x5dc

    invoke-virtual/range {v14 .. v17}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .restart local v12    # "resultDurationMS":J
    goto/16 :goto_0

    .line 499
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .restart local v10    # "rawBytes":[B
    :cond_7
    const/4 v14, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7, v12, v13}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    .line 501
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v10    # "rawBytes":[B
    :cond_8
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 513
    sget-object v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "initCamera() was called"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-nez p1, :cond_0

    .line 515
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SurfaceHolder provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 517
    :cond_0
    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    sget-object v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 522
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 524
    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v2, :cond_2

    .line 525
    new-instance v2, Lcom/google/zxing/client/android/CaptureActivityHandler;

    iget-object v3, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v4, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 527
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 528
    :catch_0
    move-exception v1

    .line 529
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    invoke-direct {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    .line 531
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    invoke-direct {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private sendReplyMessage(ILjava/lang/Object;J)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "delayMS"    # J

    .prologue
    .line 504
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, "message":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 556
    return-void
.end method

.method getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 307
    iput-object p1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 308
    invoke-static {p0, p1}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->makeResultHandler(Landroid/app/Activity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;

    move-result-object v2

    .line 310
    .local v2, "resultHandler":Lcom/google/zxing/client/android/result/ResultHandler;
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 311
    .local v0, "fromLiveScan":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0, p2, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 315
    :cond_0
    sget-object v4, Lcom/google/zxing/client/android/AppInvCaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    iget-object v5, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 330
    :cond_1
    :goto_1
    return-void

    .end local v0    # "fromLiveScan":Z
    :cond_2
    move v0, v3

    .line 310
    goto :goto_0

    .line 318
    .restart local v0    # "fromLiveScan":Z
    :pswitch_0
    invoke-direct {p0, p1, v2, p2}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 321
    :pswitch_1
    if-eqz v0, :cond_1

    .line 322
    const-string v1, " (bulk scan)"

    .line 323
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 325
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 133
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    .line 135
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 137
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 141
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setContentView(Landroid/view/View;)V

    .line 142
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 144
    iput-boolean v5, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    .line 145
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 236
    sparse-switch p1, :sswitch_data_0

    .line 260
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 238
    :sswitch_1
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_1

    .line 239
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->finish()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v2, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_0

    .line 244
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_0

    .line 254
    :sswitch_2
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 257
    :sswitch_3
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 221
    iget-boolean v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 223
    iget-object v1, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 224
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 226
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    new-instance v6, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 157
    new-instance v6, Lcom/google/zxing/client/android/ViewfinderView;

    invoke-direct {v6, p0, v8}, Lcom/google/zxing/client/android/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 158
    iget-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    iget-object v7, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v6, v7}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 159
    iget-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 161
    iput-object v8, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 162
    iput-object v8, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 164
    iget-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    if-nez v6, :cond_0

    .line 165
    new-instance v6, Landroid/view/SurfaceView;

    invoke-direct {v6, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 166
    iget-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    :cond_0
    iget-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 169
    .local v4, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-eqz v6, :cond_3

    .line 172
    invoke-direct {p0, v4}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 179
    :goto_0
    iget-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v9}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 181
    invoke-virtual {p0}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 183
    .local v3, "intent":Landroid/content/Intent;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->copyToClipboard:Z

    .line 185
    sget-object v6, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    iput-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 186
    iput-object v8, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 187
    iput-object v8, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    .line 189
    if-eqz v3, :cond_2

    .line 191
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "dataString":Ljava/lang/String;
    const-string v6, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 197
    sget-object v6, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 198
    invoke-static {v3}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 200
    const-string v6, "SCAN_WIDTH"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "SCAN_HEIGHT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    const-string v6, "SCAN_WIDTH"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 202
    .local v5, "width":I
    const-string v6, "SCAN_HEIGHT"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 203
    .local v2, "height":I
    if-lez v5, :cond_1

    if-lez v2, :cond_1

    .line 204
    iget-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v6, v5, v2}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 209
    .end local v2    # "height":I
    .end local v5    # "width":I
    :cond_1
    const-string v6, "CHARACTER_SET"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    .line 212
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "dataString":Ljava/lang/String;
    :cond_2
    return-void

    .line 175
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 176
    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 552
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 298
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    sget-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    .line 286
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 288
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    .line 293
    return-void
.end method
