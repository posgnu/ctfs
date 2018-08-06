.class Lcom/sendbird/android/MemberCountQuery$1$2;
.super Ljava/lang/Object;
.source "MemberCountQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MemberCountQuery$1;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/MemberCountQuery$1;

.field final synthetic val$accumulatedMemberCount:I

.field final synthetic val$memberCount:I

.field final synthetic val$onlineMemberCount:I


# direct methods
.method constructor <init>(Lcom/sendbird/android/MemberCountQuery$1;III)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->this$1:Lcom/sendbird/android/MemberCountQuery$1;

    iput p2, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->val$memberCount:I

    iput p3, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->val$onlineMemberCount:I

    iput p4, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->val$accumulatedMemberCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->this$1:Lcom/sendbird/android/MemberCountQuery$1;

    iget-object v0, v0, Lcom/sendbird/android/MemberCountQuery$1;->val$handler:Lcom/sendbird/android/MemberCountQuery$MemberCountQueryResult;

    iget v1, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->val$memberCount:I

    iget v2, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->val$onlineMemberCount:I

    iget v3, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->val$accumulatedMemberCount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sendbird/android/MemberCountQuery$MemberCountQueryResult;->onResult(III)V

    .line 61
    iget-object v0, p0, Lcom/sendbird/android/MemberCountQuery$1$2;->this$1:Lcom/sendbird/android/MemberCountQuery$1;

    iget-object v0, v0, Lcom/sendbird/android/MemberCountQuery$1;->this$0:Lcom/sendbird/android/MemberCountQuery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sendbird/android/MemberCountQuery;->setLoading(Z)V

    .line 62
    return-void
.end method
