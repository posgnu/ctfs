.class public Lco/kr/festfive/activity/QrcodeReaderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "QrcodeReaderActivity.java"

# interfaces
.implements Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;


# instance fields
.field private intent:Landroid/content/Intent;

.field private qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/QrcodeReaderActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lco/kr/festfive/activity/QrcodeReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->intent:Landroid/content/Intent;

    .line 42
    const v0, 0x7f0801a5

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/QrcodeReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    iput-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    .line 43
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0, p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setOnQRCodeReadListener(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;)V

    .line 46
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setQRDecodingEnabled(Z)V

    .line 49
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setAutofocusInterval(J)V

    .line 52
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setTorchEnabled(Z)V

    .line 60
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->setBackCamera()V

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->stopCamera()V

    .line 80
    return-void
.end method

.method public onQRCodeRead(Ljava/lang/String;[Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "points"    # [Landroid/graphics/PointF;

    .prologue
    .line 65
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->intent:Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/4 v0, 0x1

    iget-object v1, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lco/kr/festfive/activity/QrcodeReaderActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lco/kr/festfive/activity/QrcodeReaderActivity;->finish()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lco/kr/festfive/activity/QrcodeReaderActivity;->qrCodeReaderView:Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    invoke-virtual {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->startCamera()V

    .line 74
    return-void
.end method
