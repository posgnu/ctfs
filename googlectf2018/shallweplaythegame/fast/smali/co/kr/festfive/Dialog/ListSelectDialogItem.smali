.class public Lco/kr/festfive/Dialog/ListSelectDialogItem;
.super Ljava/lang/Object;
.source "ListSelectDialogItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;
    }
.end annotation


# instance fields
.field private listener:Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lco/kr/festfive/Dialog/ListSelectDialogItem;->text:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lco/kr/festfive/Dialog/ListSelectDialogItem;->listener:Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

    .line 14
    return-void
.end method


# virtual methods
.method public getListener()Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lco/kr/festfive/Dialog/ListSelectDialogItem;->listener:Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lco/kr/festfive/Dialog/ListSelectDialogItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setListener(Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

    .prologue
    .line 33
    iput-object p1, p0, Lco/kr/festfive/Dialog/ListSelectDialogItem;->listener:Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;

    .line 34
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lco/kr/festfive/Dialog/ListSelectDialogItem;->text:Ljava/lang/String;

    .line 26
    return-void
.end method
