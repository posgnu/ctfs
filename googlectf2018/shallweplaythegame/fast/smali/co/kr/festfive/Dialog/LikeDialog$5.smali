.class Lco/kr/festfive/Dialog/LikeDialog$5;
.super Ljava/lang/Object;
.source "LikeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/Dialog/LikeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/Dialog/LikeDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/Dialog/LikeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/Dialog/LikeDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lco/kr/festfive/Dialog/LikeDialog$5;->this$0:Lco/kr/festfive/Dialog/LikeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog$5;->this$0:Lco/kr/festfive/Dialog/LikeDialog;

    invoke-virtual {v0}, Lco/kr/festfive/Dialog/LikeDialog;->dismiss()V

    .line 177
    return-void
.end method
