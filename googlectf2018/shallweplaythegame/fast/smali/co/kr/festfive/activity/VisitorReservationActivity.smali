.class public Lco/kr/festfive/activity/VisitorReservationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "VisitorReservationActivity.java"


# instance fields
.field private officeId:Ljava/lang/String;

.field private officeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v2, 0x7f0a003a

    invoke-virtual {p0, v2}, Lco/kr/festfive/activity/VisitorReservationActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lco/kr/festfive/activity/VisitorReservationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "officeId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/VisitorReservationActivity;->officeId:Ljava/lang/String;

    .line 23
    const-string v2, "officeName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/VisitorReservationActivity;->officeName:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Lco/kr/festfive/activity/VisitorReservationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 26
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0800b0

    iget-object v3, p0, Lco/kr/festfive/activity/VisitorReservationActivity;->officeId:Ljava/lang/String;

    iget-object v4, p0, Lco/kr/festfive/activity/VisitorReservationActivity;->officeName:Ljava/lang/String;

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/VisitorReservationFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 27
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 29
    return-void
.end method
