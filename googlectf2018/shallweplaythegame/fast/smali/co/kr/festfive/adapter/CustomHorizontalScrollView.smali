.class public Lco/kr/festfive/adapter/CustomHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "CustomHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private newX:I

.field private oldX:I

.field private runnable:Ljava/lang/Runnable;

.field private scrollChangeListener:Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lco/kr/festfive/adapter/CustomHorizontalScrollView$1;-><init>(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)V

    iput-object v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->runnable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    .prologue
    .line 12
    iget v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->newX:I

    return v0
.end method

.method static synthetic access$002(Lco/kr/festfive/adapter/CustomHorizontalScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/adapter/CustomHorizontalScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->newX:I

    return p1
.end method

.method static synthetic access$100(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    .prologue
    .line 12
    iget v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->oldX:I

    return v0
.end method

.method static synthetic access$200(Lco/kr/festfive/adapter/CustomHorizontalScrollView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    .prologue
    .line 12
    iget-object v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->scrollChangeListener:Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;

    invoke-interface {v0, p1}, Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;->onScrollChange(I)V

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 23
    return-void
.end method

.method public setOnChangeListener(Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->scrollChangeListener:Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;

    .line 59
    return-void
.end method

.method public startCheck()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method
