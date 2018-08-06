.class Lco/kr/festfive/activity/UserDetailActivity$2;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/UserDetailActivity;->getDetailToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/activity/UserDetailActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/UserDetailActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/UserDetailActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    iput-object p2, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 121
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 9
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
    const/4 v8, 0x0

    .line 126
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 130
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 134
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v4, "code"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 136
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 145
    .local v0, "data":Lcom/google/gson/JsonObject;
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    const-string v5, "user_profile_url"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lco/kr/festfive/activity/UserDetailActivity;->access$002(Lco/kr/festfive/activity/UserDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    const-string v5, "user_profile_thumb_url"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v5}, Lco/kr/festfive/activity/UserDetailActivity;->access$200(Lco/kr/festfive/activity/UserDetailActivity;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 147
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$300(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "user_name"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const-string v4, "office_room_name"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "officeRoomName":Ljava/lang/String;
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    const-string v4, "["

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_1
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$400(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "office_name"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$500(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user_position"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "user_company"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$600(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "user_introduce"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$700(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Member Since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "create_date"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$800(Lco/kr/festfive/activity/UserDetailActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    if-nez v4, :cond_2

    .line 160
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    invoke-static {v4, v5}, Lco/kr/festfive/activity/UserDetailActivity;->access$802(Lco/kr/festfive/activity/UserDetailActivity;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;

    .line 163
    :cond_2
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$800(Lco/kr/festfive/activity/UserDetailActivity;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "userId":Ljava/lang/String;
    const-string v4, "user_id"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$900(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0700c7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_0
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    const-string v5, "user_email"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lco/kr/festfive/activity/UserDetailActivity;->access$1002(Lco/kr/festfive/activity/UserDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    const-string v5, "user_id"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lco/kr/festfive/activity/UserDetailActivity;->access$1102(Lco/kr/festfive/activity/UserDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v2    # "officeRoomName":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 168
    .restart local v0    # "data":Lcom/google/gson/JsonObject;
    .restart local v1    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v2    # "officeRoomName":Ljava/lang/String;
    .restart local v3    # "userId":Ljava/lang/String;
    :cond_4
    const-string v4, "user_level"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$900(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f0700c6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 171
    :cond_5
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    invoke-static {v4}, Lco/kr/festfive/activity/UserDetailActivity;->access$900(Lco/kr/festfive/activity/UserDetailActivity;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 178
    .end local v0    # "data":Lcom/google/gson/JsonObject;
    .end local v2    # "officeRoomName":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lco/kr/festfive/activity/UserDetailActivity$2;->this$0:Lco/kr/festfive/activity/UserDetailActivity;

    const-string v5, "message"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
