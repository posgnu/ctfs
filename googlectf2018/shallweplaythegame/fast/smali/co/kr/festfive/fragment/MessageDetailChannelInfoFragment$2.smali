.class Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;
.super Ljava/lang/Object;
.source "MessageDetailChannelInfoFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getDetailToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 241
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 244
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/google/gson/JsonObject;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 253
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 257
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$300(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Lco/kr/festfive/model/UserListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/UserListItem;->getUserProfileThumb_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$200(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 260
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$400(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$300(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Lco/kr/festfive/model/UserListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/UserListItem;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .end local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_1
    :goto_0
    return-void

    .line 269
    .restart local v0    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$2;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method