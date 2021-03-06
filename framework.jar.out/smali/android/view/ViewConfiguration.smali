.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 242
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 243
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 244
    const/16 v0, 0x1f40

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 245
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 246
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 247
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 248
    iput v2, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 249
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 250
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 252
    const v0, 0x177000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 254
    const/4 v0, 0x6

    iput v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 256
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 270
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 271
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 272
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 274
    .local v1, "density":F
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float v6, v1, v8

    .line 280
    .local v6, "sizeAndDensity":F
    :goto_0
    iput-object p1, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    .line 282
    mul-float v8, v6, v9

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 283
    mul-float v8, v6, v9

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 284
    const/high16 v8, 0x42480000    # 50.0f

    mul-float/2addr v8, v1

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 285
    const/high16 v8, 0x45fa0000    # 8000.0f

    mul-float/2addr v8, v1

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 286
    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v8, v1

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 287
    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 288
    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 291
    const-string/jumbo v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 292
    .local v7, "win":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 293
    .local v2, "display":Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 294
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 295
    iget v8, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v8, v8, 0x4

    iget v9, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v9

    iput v8, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 297
    const/4 v8, 0x0

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v8, v8

    invoke-static {p1, v11}, Landroid/view/ViewConfigurationHelper;->getOverScrollDistance(Landroid/content/Context;I)I

    move-result v11

    iput v8, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    .line 298
    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v8, v8

    invoke-static {p1, v11}, Landroid/view/ViewConfigurationHelper;->getOverFlingDistance(Landroid/content/Context;I)I

    move-result v11
 
    iput v8, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 300
    const v8, 0x1110014

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    .line 302
    const v8, 0x1050008

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 304
    iget v8, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 306
    iget v8, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput v8, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    .line 307
    return-void

    .line 277
    .end local v2    # "display":Landroid/view/Display;
    .end local v5    # "size":Landroid/graphics/Point;
    .end local v6    # "sizeAndDensity":F
    .end local v7    # "win":Landroid/view/WindowManager;
    :cond_0
    move v6, v1

    .restart local v6    # "sizeAndDensity":F
    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Landroid/view/ViewConfigurationHelper;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "cfg":Landroid/view/ViewConfiguration;
    if-eqz v0, :cond_miui_0

    move-object v1, v0

    :goto_miui_0
    return-object v1

    :cond_miui_0
    invoke-static {p0}, Landroid/view/ViewConfigurationHelper;->needMiuiConfiguration(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_miui_1

    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "cfg":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .restart local v0    # "cfg":Landroid/view/ViewConfiguration;
    invoke-static {p0, v0}, Landroid/view/ViewConfigurationHelper;->put(Landroid/content/Context;Landroid/view/ViewConfiguration;)V

    move-object v1, v0

    goto :goto_miui_0

    :cond_miui_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 318
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 320
    .local v1, "density":I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 321
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_0

    .line 322
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 323
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    :cond_0
    return-object v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    .prologue
    .line 445
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2

    .prologue
    .line 665
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    .prologue
    .line 465
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 455
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    .prologue
    .line 425
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 407
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    .prologue
    .line 392
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 581
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    .prologue
    .line 384
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 352
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    .prologue
    .line 359
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    .prologue
    .line 675
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    .prologue
    .line 551
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    .prologue
    .line 416
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    .prologue
    .line 654
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method

.method public hasPermanentMenuKey()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 691
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 694
    .local v3, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v4

    .line 697
    :catch_0
    move-exception v6

    .line 702
    :cond_1
    iget-object v6, p0, Landroid/view/ViewConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 703
    .local v2, "res":Landroid/content/ContentResolver;
    const-string/jumbo v6, "ui_force_overflow_button"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    .line 705
    .local v1, "forceOverflowButton":Z
    :goto_1
    if-nez v1, :cond_0

    .line 711
    :try_start_1
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasMenuKeyEnabled()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .end local v1    # "forceOverflowButton":Z
    :cond_2
    move v1, v4

    .line 703
    goto :goto_1

    .line 712
    .restart local v1    # "forceOverflowButton":Z
    :catch_1
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move v4, v5

    .line 713
    goto :goto_0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return v0
.end method
