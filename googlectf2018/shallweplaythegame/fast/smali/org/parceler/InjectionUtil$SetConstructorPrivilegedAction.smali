.class final Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;
.super Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;
.source "InjectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/InjectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetConstructorPrivilegedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction",
        "<TT;",
        "Ljava/lang/reflect/Constructor;",
        ">;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "classConstructor"    # Ljava/lang/reflect/Constructor;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 202
    .local p0, "this":Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction<TT;>;"
    invoke-direct {p0, p1}, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 203
    iput-object p2, p0, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;->args:[Ljava/lang/Object;

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Constructor;
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # Lorg/parceler/InjectionUtil$1;

    .prologue
    .line 198
    .local p0, "this":Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V

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
    .line 198
    .local p0, "this":Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction<TT;>;"
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1}, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;->run(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;
    .locals 1
    .param p1, "classConstructor"    # Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction<TT;>;"
    iget-object v0, p0, Lorg/parceler/InjectionUtil$SetConstructorPrivilegedAction;->args:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
