.class Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/fragment/SearchChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabItem"
.end annotation


# instance fields
.field private office_id:Ljava/lang/String;

.field private office_name:Ljava/lang/String;

.field final synthetic this$0:Lco/kr/festfive/fragment/SearchChannelFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchChannelFragment;
    .param p2, "_office_name"    # Ljava/lang/String;
    .param p3, "office_id"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->office_name:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->office_id:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public getOffice_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->office_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffice_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->office_name:Ljava/lang/String;

    return-object v0
.end method

.method public setOffice_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "office_id"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->office_id:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setOffice_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "office_name"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->office_name:Ljava/lang/String;

    .line 114
    return-void
.end method
