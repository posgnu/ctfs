.class Lco/kr/festfive/fragment/NewsFeedFragment$4;
.super Ljava/lang/Object;
.source "NewsFeedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedFragment;->DialogSelectOption([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 325
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment$4;->this$0:Lco/kr/festfive/fragment/NewsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 329
    return-void
.end method
