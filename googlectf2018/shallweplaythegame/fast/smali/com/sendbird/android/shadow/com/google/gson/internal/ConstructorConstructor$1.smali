.class Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor$1;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;->get(Lcom/sendbird/android/shadow/com/google/gson/reflect/TypeToken;)Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sendbird/android/shadow/com/google/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

.field final synthetic val$type:Ljava/lang/reflect/Type;

.field final synthetic val$typeCreator:Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor$1;->this$0:Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;

    iput-object p3, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;

    iget-object v1, p0, Lcom/sendbird/android/shadow/com/google/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
