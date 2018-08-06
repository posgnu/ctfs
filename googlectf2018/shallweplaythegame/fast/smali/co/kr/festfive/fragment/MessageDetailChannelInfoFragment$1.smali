.class Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;
.super Ljava/lang/Object;
.source "MessageDetailChannelInfoFragment.java"

# interfaces
.implements Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 193
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/SendBirdException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    return-void
.end method

.method public onResult(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sendbird/android/model/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/Member;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, "mItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/Member;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v4, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$000(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "inflater1":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "inflater1":Landroid/view/LayoutInflater;
    check-cast v1, Landroid/view/LayoutInflater;

    .line 182
    .restart local v1    # "inflater1":Landroid/view/LayoutInflater;
    const v4, 0x7f0a003e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "mLinearView":Landroid/view/View;
    iget-object v5, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    const v4, 0x7f080055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-static {v5, v4}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$102(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;Lcom/mikhaellopez/circularimageview/CircularImageView;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 185
    iget-object v4, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/model/Member;

    invoke-virtual {v4}, Lcom/sendbird/android/model/Member;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$100(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Lcom/mikhaellopez/circularimageview/CircularImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 187
    iget-object v4, p0, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment$1;->this$0:Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;->access$000(Lco/kr/festfive/fragment/MessageDetailChannelInfoFragment;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "inflater1":Landroid/view/LayoutInflater;
    .end local v3    # "mLinearView":Landroid/view/View;
    :cond_0
    return-void
.end method
