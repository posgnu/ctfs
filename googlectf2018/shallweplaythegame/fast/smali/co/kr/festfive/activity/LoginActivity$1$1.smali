.class Lco/kr/festfive/activity/LoginActivity$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/LoginActivity$1;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/LoginActivity$1;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/LoginActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/LoginActivity$1;

    .prologue
    .line 158
    iput-object p1, p0, Lco/kr/festfive/activity/LoginActivity$1$1;->this$1:Lco/kr/festfive/activity/LoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 162
    return-void
.end method
