.class Lco/kr/festfive/fragment/DetailFeedFragment$10;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;->getNewsFeedReplyListToServer()V
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
.field final synthetic this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 927
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 931
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 934
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 12
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
    .line 938
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/google/gson/JsonObject;>;"
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_0

    .line 939
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 942
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 943
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 944
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3300(Lco/kr/festfive/fragment/DetailFeedFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 946
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 948
    .local v5, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v8, "code"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 949
    const-string v8, "data"

    invoke-virtual {v5, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 950
    .local v0, "data":Lcom/google/gson/JsonArray;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$1500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v10}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e00be

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 953
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 955
    .local v7, "object":Lcom/google/gson/JsonObject;
    const/4 v4, 0x0

    .line 956
    .local v4, "inflater1":Landroid/view/LayoutInflater;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "inflater1":Landroid/view/LayoutInflater;
    check-cast v4, Landroid/view/LayoutInflater;

    .line 957
    .restart local v4    # "inflater1":Landroid/view/LayoutInflater;
    const v8, 0x7f0a0085

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 959
    .local v6, "mLinearView":Landroid/view/View;
    iget-object v9, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    const v8, 0x7f0801af

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-static {v9, v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3402(Lco/kr/festfive/fragment/DetailFeedFragment;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 962
    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, "id":Ljava/lang/String;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3300(Lco/kr/festfive/fragment/DetailFeedFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3400(Lco/kr/festfive/fragment/DetailFeedFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setId(I)V

    .line 966
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3400(Lco/kr/festfive/fragment/DetailFeedFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v8

    new-instance v9, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;

    invoke-direct {v9, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment$10;)V

    invoke-virtual {v8, v9}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$000(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    const-string v9, "user_profile_thumb_url"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v8

    sget-object v9, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v8

    iget-object v9, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v9}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3400(Lco/kr/festfive/fragment/DetailFeedFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 999
    iget-object v9, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    const v8, 0x7f0801ae

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v9, v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3502(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1001
    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, "id1":Ljava/lang/String;
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1003
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Lco/kr/festfive/fragment/DetailFeedFragment$10$2;

    invoke-direct {v9, p0}, Lco/kr/festfive/fragment/DetailFeedFragment$10$2;-><init>(Lco/kr/festfive/fragment/DetailFeedFragment$10;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3500(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "user_name"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v9, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    const v8, 0x7f0801aa

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v9, v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3602(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1036
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3600(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "reply"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v9, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    const v8, 0x7f0801ab

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v9, v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3702(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1039
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3700(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "create_date"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lco/kr/festfive/utils/Utils;->toDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v9

    invoke-static {v9}, Lco/kr/festfive/utils/Utils;->getDateStr(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3200(Lco/kr/festfive/fragment/DetailFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v0    # "data":Lcom/google/gson/JsonArray;
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "id1":Ljava/lang/String;
    .end local v4    # "inflater1":Landroid/view/LayoutInflater;
    .end local v6    # "mLinearView":Landroid/view/View;
    .end local v7    # "object":Lcom/google/gson/JsonObject;
    :cond_1
    iget-object v8, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v8}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "message"

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1052
    .end local v5    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    return-void
.end method
