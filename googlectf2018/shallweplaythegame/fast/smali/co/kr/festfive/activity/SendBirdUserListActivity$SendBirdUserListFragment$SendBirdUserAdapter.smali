.class public Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "SendBirdUserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendBirdUserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;


# direct methods
.method public constructor <init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 280
    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mContext:Landroid/content/Context;

    .line 281
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mItemList:Ljava/util/ArrayList;

    .line 283
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sendbird/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "users":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/User;>;"
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 310
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->notifyDataSetChanged()V

    .line 311
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 297
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sendbird/android/model/User;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/User;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->getItem(I)Lcom/sendbird/android/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 305
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    new-instance v1, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;Lco/kr/festfive/activity/SendBirdUserListActivity$1;)V

    .line 320
    .local v1, "viewHolder":Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0a009c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 321
    const-string v2, "root_view"

    invoke-virtual {v1, v2, p2}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 322
    const-string v2, "img_thumbnail"

    const v3, 0x7f0800cf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 323
    const-string v2, "txt_name"

    const v3, 0x7f080236

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 324
    const-string v2, "chk_select"

    const v3, 0x7f08003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 325
    const-string v2, "txt_status"

    const v3, 0x7f08023c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->setView(Ljava/lang/String;Landroid/view/View;)V

    .line 328
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 331
    .end local v1    # "viewHolder":Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p0, p1}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->getItem(I)Lcom/sendbird/android/model/User;

    move-result-object v0

    .line 332
    .local v0, "item":Lcom/sendbird/android/model/User;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;

    .line 333
    .restart local v1    # "viewHolder":Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;
    const-string v2, "img_thumbnail"

    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sendbird/android/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity;->access$500(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 334
    const-string v2, "txt_name"

    const-class v3, Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sendbird/android/model/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const-string v2, "chk_select"

    const-class v3, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;

    invoke-direct {v3, p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;Lcom/sendbird/android/model/User;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 350
    const-string v2, "chk_select"

    const-class v3, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$600(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 351
    invoke-virtual {v0}, Lcom/sendbird/android/model/User;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    const-string v2, "txt_status"

    const-class v3, Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "Online"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :goto_0
    return-object p2

    .line 354
    :cond_1
    invoke-virtual {v0}, Lcom/sendbird/android/model/User;->getLastSeenAt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 356
    const-string v2, "txt_status"

    const-class v3, Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    :cond_2
    const-string v2, "txt_status"

    const-class v3, Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$ViewHolder;->getView(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MMM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/sendbird/android/model/User;->getLastSeenAt()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public remove(I)Lcom/sendbird/android/model/User;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/User;

    return-object v0
.end method
