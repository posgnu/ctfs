.class public Lco/kr/festfive/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 41
    new-instance v0, Lco/kr/festfive/Dialog/CustomDialog;

    invoke-direct {v0, p0}, Lco/kr/festfive/Dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "builder":Lco/kr/festfive/Dialog/CustomDialog;
    invoke-virtual {v0, p1}, Lco/kr/festfive/Dialog/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p2}, Lco/kr/festfive/Dialog/CustomDialog;->setMessage(Ljava/lang/String;)V

    .line 44
    const v1, 0x7f0e0095

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lco/kr/festfive/Dialog/CustomDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v0}, Lco/kr/festfive/Dialog/CustomDialog;->show()V

    .line 46
    return-void
.end method

.method public static Confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "confirm"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "okClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "cancleClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 49
    new-instance v0, Lco/kr/festfive/Dialog/CustomDialog;

    invoke-direct {v0, p0}, Lco/kr/festfive/Dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Lco/kr/festfive/Dialog/CustomDialog;
    invoke-virtual {v0, p1}, Lco/kr/festfive/Dialog/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p3}, Lco/kr/festfive/Dialog/CustomDialog;->setMessage(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p2, p4}, Lco/kr/festfive/Dialog/CustomDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0e0028

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lco/kr/festfive/Dialog/CustomDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v0}, Lco/kr/festfive/Dialog/CustomDialog;->show()V

    .line 55
    return-void
.end method

.method public static GetDpToPixel(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "DP"    # F

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "px":F
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    :goto_0
    float-to-int v1, v0

    return v1

    .line 87
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static GetDpToPixel(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "DP"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "px":F
    const/4 v1, 0x1

    int-to-float v2, p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    float-to-int v1, v0

    return v1

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static GetPixelToDp(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pixel"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "dp":F
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 66
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v2, p1

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    div-float v0, v2, v3

    .line 70
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    float-to-int v2, v0

    return v2

    .line 67
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "edt"    # Landroid/widget/EditText;

    .prologue
    .line 58
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 60
    return-void
.end method

.method public static IsNullSpace(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 35
    if-nez p0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public static copyClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 136
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 137
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 138
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 141
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v2, "Copied Text"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 142
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method public static generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 110
    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 111
    .local v7, "serial":Ljava/lang/String;
    const-string v0, "android_id"

    .line 112
    .local v0, "androidID":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "deviceUUID":Ljava/lang/String;
    :try_start_0
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 121
    .local v3, "digest":Ljava/security/MessageDigest;
    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 127
    .local v5, "result":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v6, "sb":Ljava/lang/StringBuilder;
    array-length v10, v5

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_0

    aget-byte v1, v5, v8

    .line 129
    .local v1, "b":B
    const-string v11, "%02X"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "b":B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "result":[B
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 123
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/4 v8, 0x0

    .line 132
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .restart local v3    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "result":[B
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static getDateStr(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 26
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const/16 v21, 0x0

    .line 215
    :goto_0
    return-object v21

    .line 175
    :cond_0
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 176
    .local v17, "targetYear":I
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v16, v21, 0x1

    .line 177
    .local v16, "targetMonth":I
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 178
    .local v18, "targetYearDay":I
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 179
    .local v13, "targetDay":I
    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 180
    .local v14, "targetHour":I
    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 182
    .local v15, "targetMin":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 183
    .local v12, "now":Ljava/util/Calendar;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 184
    .local v19, "year":I
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v11, v21, 0x1

    .line 185
    .local v11, "month":I
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 186
    .local v20, "yearDay":I
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 187
    .local v2, "day":I
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 188
    .local v3, "hour":I
    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 190
    .local v10, "min":I
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    sub-long v4, v22, v24

    .line 191
    .local v4, "diff":J
    const-wide/32 v22, 0x36ee80

    div-long v6, v4, v22

    .line 193
    .local v6, "diffHours":J
    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 194
    const-string v21, "yyyy. M. d"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->toString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 195
    :cond_1
    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 196
    const-string v21, "M. d. a h:mm"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->toString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 197
    :cond_2
    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 198
    const-wide/16 v22, 0xc

    cmp-long v21, v6, v22

    if-gez v21, :cond_4

    .line 199
    const-wide/32 v22, 0xea60

    div-long v8, v4, v22

    .line 200
    .local v8, "diffMinute":J
    const-wide/16 v22, 0x3c

    cmp-long v21, v8, v22

    if-lez v21, :cond_3

    .line 201
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\uc2dc\uac04 \uc804"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 203
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\ubd84 \uc804"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 206
    .end local v8    # "diffMinute":J
    :cond_4
    const-string v21, "\uc5b4\uc81c a h:mm"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->toString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 207
    :cond_5
    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 208
    const-wide/32 v22, 0xea60

    div-long v8, v4, v22

    .line 209
    .restart local v8    # "diffMinute":J
    const-wide/16 v22, 0x3c

    cmp-long v21, v8, v22

    if-lez v21, :cond_6

    .line 210
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\uc2dc\uac04 \uc804"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 212
    :cond_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\ubd84 \uc804"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 215
    .end local v8    # "diffMinute":J
    :cond_7
    const-string v21, ""

    goto/16 :goto_0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .prologue
    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 103
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 104
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 107
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "strDate":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_0
    return-object v1
.end method
