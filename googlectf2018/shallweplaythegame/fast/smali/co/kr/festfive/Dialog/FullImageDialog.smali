.class public Lco/kr/festfive/Dialog/FullImageDialog;
.super Landroid/app/Dialog;
.source "FullImageDialog.java"

# interfaces
.implements Lco/kr/festfive/listener/DialogListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

.field private dialogListener:Lco/kr/festfive/listener/DialogListener;

.field private imageClose:Landroid/widget/ImageView;

.field private imageView:Landroid/widget/ImageView;

.field private newsFeedListFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

.field private noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->init()V

    .line 42
    iput-object p1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->context:Landroid/content/Context;

    .line 44
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 50
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->init()V

    .line 89
    iput-object p1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lco/kr/festfive/Dialog/FullImageDialog;->url:Ljava/lang/String;

    .line 92
    const v1, 0x7f0800c6

    invoke-virtual {p0, v1}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f080109

    invoke-virtual {p0, v1}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 98
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    .line 99
    .local v0, "pv":Luk/co/senab/photoview/PhotoViewAttacher;
    new-instance v1, Lco/kr/festfive/Dialog/FullImageDialog$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/Dialog/FullImageDialog$1;-><init>(Lco/kr/festfive/Dialog/FullImageDialog;)V

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 110
    new-instance v1, Lco/kr/festfive/Dialog/FullImageDialog$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/Dialog/FullImageDialog$2;-><init>(Lco/kr/festfive/Dialog/FullImageDialog;)V

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Luk/co/senab/photoview/PhotoViewAttacher$OnSingleFlingListener;)V

    .line 121
    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    .line 122
    return-void
.end method

.method public constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;Landroid/content/Context;I)V
    .locals 2
    .param p1, "detailFeedFragment"    # Lco/kr/festfive/fragment/DetailFeedFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "i"    # I

    .prologue
    .line 72
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->init()V

    .line 75
    iput-object p2, p0, Lco/kr/festfive/Dialog/FullImageDialog;->context:Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->detailFeedFragment:Lco/kr/festfive/fragment/DetailFeedFragment;

    .line 78
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 83
    return-void
.end method

.method public constructor <init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/content/Context;I)V
    .locals 2
    .param p1, "noticeDetailFeedFragment"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "i"    # I

    .prologue
    .line 54
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->init()V

    .line 59
    iput-object p2, p0, Lco/kr/festfive/Dialog/FullImageDialog;->context:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->noticeDetailFeedFragment:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .line 62
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lco/kr/festfive/Dialog/FullImageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 67
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v1, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/Dialog/FullImageDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/Dialog/FullImageDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lco/kr/festfive/Dialog/FullImageDialog;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/kr/festfive/Dialog/FullImageDialog;->requestWindowFeature(I)Z

    .line 151
    const v1, 0x7f0a0051

    invoke-virtual {p0, v1}, Lco/kr/festfive/Dialog/FullImageDialog;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 156
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f0f00a1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 163
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 143
    .local v0, "vid":I
    const v1, 0x7f080109

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/FullImageDialog;->dismiss()V

    .line 146
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onSuccess(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 137
    return-void
.end method
