.class final Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;
.super Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;
.source "InjectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/InjectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetFieldPrivilegedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field private final target:Ljava/lang/Object;

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "classField"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 113
    iput-object p2, p0, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;->target:Ljava/lang/Object;

    .line 114
    iput-object p3, p0, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;->value:Ljava/lang/Object;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Field;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lorg/parceler/InjectionUtil$1;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;->run(Ljava/lang/reflect/Field;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/reflect/Field;)Ljava/lang/Void;
    .locals 2
    .param p1, "classField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;->target:Ljava/lang/Object;

    iget-object v1, p0, Lorg/parceler/InjectionUtil$SetFieldPrivilegedAction;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
