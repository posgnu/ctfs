.class public Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PeopleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/PeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupListAdapter"
.end annotation


# instance fields
.field holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

.field final synthetic this$0:Lco/kr/festfive/fragment/PeopleFragment;


# direct methods
.method public constructor <init>(Lco/kr/festfive/fragment/PeopleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 487
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 502
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 507
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 508
    .local v0, "context":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 510
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_2

    .line 511
    const v5, 0x7f0a006f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 512
    new-instance v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {v5, v6}, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    iput-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    .line 515
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    const v5, 0x7f08013a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mikhaellopez/circularimageview/CircularImageView;

    iput-object v5, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->logoIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    .line 516
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    const v5, 0x7f08004f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->companyNmTv:Landroid/widget/TextView;

    .line 518
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    const v5, 0x7f0801f3

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->summaryTv:Landroid/widget/TextView;

    .line 519
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    const v5, 0x7f08003a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->ceoTextTv:Landroid/widget/TextView;

    .line 520
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    const v5, 0x7f0801bb

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->roomNmTv:Landroid/widget/TextView;

    .line 521
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    const v5, 0x7f08014e

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->modifyButtonLinear:Landroid/widget/LinearLayout;

    .line 522
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    const v5, 0x7f08014d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->modifyImageView:Landroid/widget/ImageView;

    .line 524
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/GroupListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/GroupListItem;->getlogoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v6, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->logoIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 525
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v6, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->companyNmTv:Landroid/widget/TextView;

    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/GroupListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/GroupListItem;->getcompanyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v6, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->summaryTv:Landroid/widget/TextView;

    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/GroupListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/GroupListItem;->getcompanySummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v6, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->ceoTextTv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ub300\ud45c: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/GroupListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/GroupListItem;->getcompanyCeo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v6, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->roomNmTv:Landroid/widget/TextView;

    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/GroupListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/GroupListItem;->getcompanyRoomNm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 537
    :goto_0
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$000(Lco/kr/festfive/fragment/PeopleFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "userId":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$000(Lco/kr/festfive/fragment/PeopleFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    const-string v6, "user_level"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "userLevel":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->this$0:Lco/kr/festfive/fragment/PeopleFragment;

    invoke-static {v5}, Lco/kr/festfive/fragment/PeopleFragment;->access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/GroupListItem;

    .line 541
    .local v1, "data":Lco/kr/festfive/model/GroupListItem;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lco/kr/festfive/model/GroupListItem;->getuserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "M"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 543
    :cond_1
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->modifyImageView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->modifyButtonLinear:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 545
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->modifyButtonLinear:Landroid/widget/LinearLayout;

    new-instance v6, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;

    invoke-direct {v6, p0, v0}, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter$1;-><init>(Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    :goto_1
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v1}, Lco/kr/festfive/model/GroupListItem;->getlogoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v6, v6, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->logoIv:Lcom/mikhaellopez/circularimageview/CircularImageView;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 594
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->companyNmTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lco/kr/festfive/model/GroupListItem;->getcompanyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lco/kr/festfive/model/GroupListItem;->getcompanySummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->ceoTextTv:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ub300\ud45c: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lco/kr/festfive/model/GroupListItem;->getcompanyCeo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->roomNmTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lco/kr/festfive/model/GroupListItem;->getcompanyRoomNm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    return-object p2

    .line 534
    .end local v1    # "data":Lco/kr/festfive/model/GroupListItem;
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "userLevel":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iput-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    goto/16 :goto_0

    .line 590
    .restart local v1    # "data":Lco/kr/festfive/model/GroupListItem;
    .restart local v3    # "userId":Ljava/lang/String;
    .restart local v4    # "userLevel":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->holder:Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;

    iget-object v5, v5, Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;->modifyImageView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
