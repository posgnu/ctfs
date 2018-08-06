.class Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;
.super Ljava/lang/Object;
.source "MessageDetailUserInfoFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->getDetailToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 136
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 8
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    const/4 v7, 0x0

    .line 144
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 152
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 154
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 164
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    const-string v4, "user_profile_thumb_url"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$000(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 165
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$100(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$200(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "office_name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "office_room_name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$300(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user_position"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user_company"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$400(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "user_introduce"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$500(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Member Since "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "create_date"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$600(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 173
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v4

    invoke-virtual {v4}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$602(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;

    .line 176
    :cond_1
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$600(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    const-string v4, "user_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "userId":Ljava/lang/String;
    const-string v3, "user_id"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$700(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0700c7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :goto_0
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    const-string v4, "user_email"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$802(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    const-string v4, "user_id"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$902(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v2    # "userId":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 181
    .restart local v0    # "data":Lcom/google/gson/JsonObject;
    .restart local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v2    # "userId":Ljava/lang/String;
    :cond_3
    const-string v3, "user_level"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 182
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$700(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0700c6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 184
    :cond_4
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->access$700(Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v2    # "userId":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/MessageDetailUserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
