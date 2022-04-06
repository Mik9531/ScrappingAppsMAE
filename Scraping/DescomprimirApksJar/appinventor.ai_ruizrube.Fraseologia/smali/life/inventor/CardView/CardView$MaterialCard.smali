.class Llife/inventor/CardView/CardView$MaterialCard;
.super Landroid/widget/LinearLayout;
.source "CardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llife/inventor/CardView/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaterialCard"
.end annotation


# instance fields
.field final synthetic this$0:Llife/inventor/CardView/CardView;


# direct methods
.method public constructor <init>(Llife/inventor/CardView/CardView;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 28
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cardType"    # I
    .param p4, "imageString"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "subTitle"    # Ljava/lang/String;
    .param p7, "content"    # Ljava/lang/String;
    .param p8, "listButtons"    # [Ljava/lang/String;
    .param p9, "id"    # I

    .prologue
    .line 198
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Llife/inventor/CardView/CardView$MaterialCard;->this$0:Llife/inventor/CardView/CardView;

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v11, Llife/inventor/CardView/CardView$cardProperties;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v4}, Llife/inventor/CardView/CardView$cardProperties;-><init>(Llife/inventor/CardView/CardView;Llife/inventor/CardView/CardView$1;)V

    .line 201
    .local v11, "card":Llife/inventor/CardView/CardView$cardProperties;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$MaterialCard;->setId(I)V

    .line 202
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$MaterialCard;->setClipToPadding(Z)V

    .line 203
    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v11, v5}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {v11, v7}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Llife/inventor/CardView/CardView$MaterialCard;->setPadding(IIII)V

    .line 205
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v9, "PanelTotal":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 207
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 208
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v11, Llife/inventor/CardView/CardView$cardProperties;->ancho:I

    const/4 v5, -0x2

    invoke-direct {v10, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v10, "ParamsTotal":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 212
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 215
    :cond_0
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v15, "ivLogo":Landroid/widget/ImageView;
    if-nez p4, :cond_4

    const-string v23, ""

    .line 220
    .local v23, "picturePath":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Llife/inventor/CardView/CardView;->access$200(Llife/inventor/CardView/CardView;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 227
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-static {v15, v12}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 229
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$MaterialCard;->setOrientation(I)V

    .line 231
    const/16 v4, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$MaterialCard;->setGravity(I)V

    .line 233
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 234
    .local v17, "panelImagen":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 235
    const/16 v4, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 236
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, v11, Llife/inventor/CardView/CardView$cardProperties;->altoImagen:I

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v21, "paramsPanelImagen":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    const v4, 0x3f851eb8    # 1.04f

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 239
    const v4, 0x3f851eb8    # 1.04f

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 240
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    const v4, -0x777778

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 242
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    const/4 v4, 0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_3

    .line 245
    :cond_1
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v18, "panelTexto":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    const/16 v4, 0x13

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 248
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v22, "paramsPanelTexto":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 252
    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v27, "textTitle":Landroid/widget/TextView;
    const/high16 v4, 0x41c00000    # 24.0f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 254
    invoke-static/range {p1 .. p1}, Llife/inventor/CardView/CardView;->access$300(Llife/inventor/CardView/CardView;)Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 255
    const v4, 0x3f5eb852    # 0.87f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 256
    const/high16 v4, -0x1000000

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v5

    const/16 v4, 0x14

    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v6

    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v7

    const-string v4, ""

    move-object/from16 v0, p7

    if-ne v0, v4, :cond_5

    const-string v4, ""

    move-object/from16 v0, p6

    if-ne v0, v4, :cond_5

    const/16 v4, 0x10

    :goto_2
    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 263
    .local v26, "textSubTitle":Landroid/widget/TextView;
    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 264
    invoke-static/range {p1 .. p1}, Llife/inventor/CardView/CardView;->access$300(Llife/inventor/CardView/CardView;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 265
    const v4, 0x3f0f5c29    # 0.56f

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 266
    const/high16 v4, -0x1000000

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    move-object/from16 v0, v26

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v5

    const-string v4, ""

    move-object/from16 v0, p5

    if-ne v0, v4, :cond_6

    const/16 v4, 0x18

    :goto_3
    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v6

    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v7

    const-string v4, ""

    move-object/from16 v0, p7

    if-ne v0, v4, :cond_7

    const/16 v4, 0x10

    :goto_4
    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    .end local v26    # "textSubTitle":Landroid/widget/TextView;
    .end local v27    # "textTitle":Landroid/widget/TextView;
    :cond_2
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    .local v25, "textContent":Landroid/widget/TextView;
    const/high16 v4, 0x41600000    # 14.0f

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    invoke-static/range {p1 .. p1}, Llife/inventor/CardView/CardView;->access$300(Llife/inventor/CardView/CardView;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    const/high16 v4, -0x1000000

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    move-object/from16 v0, v25

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v5

    const-string v4, ""

    move-object/from16 v0, p5

    if-ne v0, v4, :cond_8

    const-string v4, ""

    move-object/from16 v0, p6

    if-ne v0, v4, :cond_8

    const/16 v4, 0x18

    :goto_5
    invoke-virtual {v11, v4}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v4

    const/16 v6, 0x10

    invoke-virtual {v11, v6}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v11, v7}, Llife/inventor/CardView/CardView$cardProperties;->getPixels(I)I

    move-result v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 278
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    .end local v18    # "panelTexto":Landroid/widget/LinearLayout;
    .end local v22    # "paramsPanelTexto":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "textContent":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p8

    array-length v4, v0

    if-eqz v4, :cond_a

    .line 284
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 285
    .local v16, "panelBotones":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    const/16 v4, 0x15

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 287
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v20, "paramsPanelButton":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    move-object/from16 v0, p8

    array-length v4, v0

    if-ge v13, v4, :cond_9

    .line 291
    new-instance v3, Llife/inventor/CardView/CardView$TextButton;

    aget-object v6, p8, v13

    add-int/lit8 v8, v13, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p9

    invoke-direct/range {v3 .. v8}, Llife/inventor/CardView/CardView$TextButton;-><init>(Llife/inventor/CardView/CardView;Landroid/content/Context;Ljava/lang/String;II)V

    .line 292
    .local v3, "newButton":Llife/inventor/CardView/CardView$TextButton;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .end local v3    # "newButton":Llife/inventor/CardView/CardView$TextButton;
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "i":I
    .end local v16    # "panelBotones":Landroid/widget/LinearLayout;
    .end local v17    # "panelImagen":Landroid/widget/LinearLayout;
    .end local v20    # "paramsPanelButton":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "paramsPanelImagen":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "picturePath":Ljava/lang/String;
    :cond_4
    move-object/from16 v23, p4

    .line 216
    goto/16 :goto_0

    .line 221
    .restart local v23    # "picturePath":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 222
    .local v14, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Llife/inventor/CardView/CardView;->ErrorOccurred(Ljava/lang/String;)V

    .line 223
    const-string v4, "Image"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v12, 0x0

    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 258
    .end local v14    # "ioe":Ljava/io/IOException;
    .restart local v17    # "panelImagen":Landroid/widget/LinearLayout;
    .restart local v18    # "panelTexto":Landroid/widget/LinearLayout;
    .restart local v21    # "paramsPanelImagen":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v22    # "paramsPanelTexto":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v27    # "textTitle":Landroid/widget/TextView;
    :cond_5
    const/16 v4, 0x8

    goto/16 :goto_2

    .line 268
    .restart local v26    # "textSubTitle":Landroid/widget/TextView;
    :cond_6
    const/4 v4, 0x6

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_4

    .line 277
    .end local v26    # "textSubTitle":Landroid/widget/TextView;
    .end local v27    # "textTitle":Landroid/widget/TextView;
    .restart local v25    # "textContent":Landroid/widget/TextView;
    :cond_8
    const/4 v4, 0x6

    goto/16 :goto_5

    .line 294
    .end local v18    # "panelTexto":Landroid/widget/LinearLayout;
    .end local v22    # "paramsPanelTexto":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "textContent":Landroid/widget/TextView;
    .restart local v13    # "i":I
    .restart local v16    # "panelBotones":Landroid/widget/LinearLayout;
    .restart local v20    # "paramsPanelButton":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    .end local v13    # "i":I
    .end local v16    # "panelBotones":Landroid/widget/LinearLayout;
    .end local v20    # "paramsPanelButton":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    new-instance v24, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 298
    .local v24, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 299
    const/4 v4, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 300
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 302
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v11, Llife/inventor/CardView/CardView$cardProperties;->ancho:I

    const/4 v5, -0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v19, "panelTotalParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Llife/inventor/CardView/CardView$MaterialCard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v4, Llife/inventor/CardView/CardView$MaterialCard$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    invoke-direct {v4, v0, v1, v2}, Llife/inventor/CardView/CardView$MaterialCard$1;-><init>(Llife/inventor/CardView/CardView$MaterialCard;Llife/inventor/CardView/CardView;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llife/inventor/CardView/CardView$MaterialCard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    return-void
.end method
