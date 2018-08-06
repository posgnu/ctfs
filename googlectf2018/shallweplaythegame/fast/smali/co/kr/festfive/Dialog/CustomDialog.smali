.class public Lco/kr/festfive/Dialog/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CancelListener:Landroid/view/View$OnClickListener;

.field private OkListener:Landroid/view/View$OnClickListener;

.field private strCancel:Ljava/lang/String;

.field private strMsg:Ljava/lang/String;

.field private strOk:Ljava/lang/String;

.field private strTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 81
    .local v0, "vid":I
    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v1, p0, Lco/kr/festfive/Dialog/CustomDialog;->CancelListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lco/kr/festfive/Dialog/CustomDialog;->CancelListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/CustomDialog;->dismiss()V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v1, p0, Lco/kr/festfive/Dialog/CustomDialog;->OkListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lco/kr/festfive/Dialog/CustomDialog;->OkListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/CustomDialog;->dismiss()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x7f08002b
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lco/kr/festfive/Dialog/CustomDialog;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const v5, 0x7f0a0052

    invoke-virtual {p0, v5}, Lco/kr/festfive/Dialog/CustomDialog;->setContentView(I)V

    .line 33
    const v5, 0x7f080216

    invoke-virtual {p0, v5}, Lco/kr/festfive/Dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 34
    .local v4, "title":Landroid/widget/TextView;
    const v5, 0x7f080215

    invoke-virtual {p0, v5}, Lco/kr/festfive/Dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 35
    .local v3, "msg":Landroid/widget/TextView;
    const v5, 0x7f08002c

    invoke-virtual {p0, v5}, Lco/kr/festfive/Dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 36
    .local v2, "btnOk":Landroid/widget/Button;
    const v5, 0x7f08002b

    invoke-virtual {p0, v5}, Lco/kr/festfive/Dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    .local v0, "btnCancel":Landroid/widget/Button;
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lco/kr/festfive/Dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 39
    .local v1, "btnConfirm":Landroid/widget/Button;
    iget-object v5, p0, Lco/kr/festfive/Dialog/CustomDialog;->strTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v5, p0, Lco/kr/festfive/Dialog/CustomDialog;->strMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v5, p0, Lco/kr/festfive/Dialog/CustomDialog;->strOk:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v5, p0, Lco/kr/festfive/Dialog/CustomDialog;->strOk:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0, v8}, Lco/kr/festfive/Dialog/CustomDialog;->setCancelable(Z)V

    .line 48
    iget-object v5, p0, Lco/kr/festfive/Dialog/CustomDialog;->strCancel:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 49
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 50
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v5, p0, Lco/kr/festfive/Dialog/CustomDialog;->strCancel:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lco/kr/festfive/Dialog/CustomDialog;->strMsg:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 73
    iput-object p1, p0, Lco/kr/festfive/Dialog/CustomDialog;->strCancel:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lco/kr/festfive/Dialog/CustomDialog;->CancelListener:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 68
    iput-object p1, p0, Lco/kr/festfive/Dialog/CustomDialog;->strOk:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lco/kr/festfive/Dialog/CustomDialog;->OkListener:Landroid/view/View$OnClickListener;

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lco/kr/festfive/Dialog/CustomDialog;->strTitle:Ljava/lang/String;

    .line 60
    return-void
.end method
