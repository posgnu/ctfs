.class Lco/kr/festfive/activity/DetailCommunityActivity$7$2;
.super Ljava/lang/Object;
.source "DetailCommunityActivity.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/DetailCommunityActivity$7;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener",
        "<",
        "Ljava/lang/String;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/DetailCommunityActivity$7;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/DetailCommunityActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/DetailCommunityActivity$7;

    .prologue
    .line 387
    iput-object p1, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;->this$1:Lco/kr/festfive/activity/DetailCommunityActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    .prologue
    .line 387
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "model"    # Ljava/lang/String;
    .param p4, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;->this$1:Lco/kr/festfive/activity/DetailCommunityActivity$7;

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;->this$1:Lco/kr/festfive/activity/DetailCommunityActivity$7;

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 1
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .param p2, "model"    # Ljava/lang/String;
    .param p4, "isFromMemoryCache"    # Z
    .param p5, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 399
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;->this$1:Lco/kr/festfive/activity/DetailCommunityActivity$7;

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;->this$1:Lco/kr/festfive/activity/DetailCommunityActivity$7;

    iget-object v0, v0, Lco/kr/festfive/activity/DetailCommunityActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 405
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .prologue
    .line 387
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lco/kr/festfive/activity/DetailCommunityActivity$7$2;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
