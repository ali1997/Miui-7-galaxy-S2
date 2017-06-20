.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final CMD_NULL:B = 0x0t

.field public static final CMD_OVERFLOW:B = 0x3t

.field public static final CMD_START:B = 0x2t

.field public static final CMD_UPDATE:B = 0x1t

.field static final DEBUG:Z = false

.field static final DELTA_BATTERY_LEVEL_FLAG:I = 0x100000

.field static final DELTA_CMD_MASK:I = 0x3

.field static final DELTA_CMD_SHIFT:I = 0x12

.field static final DELTA_STATE_FLAG:I = 0x200000

.field static final DELTA_STATE_MASK:I = -0x400000

.field static final DELTA_TIME_ABS:I = 0x3fffd

.field static final DELTA_TIME_INT:I = 0x3fffe

.field static final DELTA_TIME_LONG:I = 0x3ffff

.field static final DELTA_TIME_MASK:I = 0x3ffff

.field public static final MOST_INTERESTING_STATES:I = 0x101c0000

.field public static final STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final STATE_BLUETOOTH_ON_FLAG:I = 0x10000

.field public static final STATE_BRIGHTNESS_MASK:I = 0xf

.field public static final STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final STATE_DATA_CONNECTION_MASK:I = 0xf000

.field public static final STATE_DATA_CONNECTION_SHIFT:I = 0xc

.field public static final STATE_GPS_ON_FLAG:I = 0x10000000

.field public static final STATE_PHONE_IN_CALL_FLAG:I = 0x40000

.field public static final STATE_PHONE_SCANNING_FLAG:I = 0x8000000

.field public static final STATE_PHONE_STATE_MASK:I = 0xf00

.field public static final STATE_PHONE_STATE_SHIFT:I = 0x8

.field public static final STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final STATE_SENSOR_ON_FLAG:I = 0x20000000

.field public static final STATE_SIGNAL_STRENGTH_MASK:I = 0xf0

.field public static final STATE_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final STATE_VIDEO_ON_FLAG:I = 0x200000

.field public static final STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final STATE_WIFI_FULL_LOCK_FLAG:I = 0x2000000

.field public static final STATE_WIFI_MULTICAST_ON_FLAG:I = 0x800000

.field public static final STATE_WIFI_ON_FLAG:I = 0x20000

.field public static final STATE_WIFI_RUNNING_FLAG:I = 0x4000000

.field public static final STATE_WIFI_SCAN_FLAG:I = 0x1000000

.field static final TAG:Ljava/lang/String; = "HistoryItem"


# instance fields
.field public batteryHealth:B

.field public batteryLevel:B

.field public batteryPlugType:B

.field public batteryStatus:B

.field public batteryTemperature:C

.field public batteryVoltage:C

.field public cmd:B

.field public next:Landroid/os/BatteryStats$HistoryItem;

.field public states:I

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 497
    return-void
.end method

.method public constructor <init>(JLandroid/os/Parcel;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "src"    # Landroid/os/Parcel;

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 500
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 501
    invoke-direct {p0, p3}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 502
    return-void
.end method

.method private buildBatteryLevelInt()I
    .locals 3

    .prologue
    .line 614
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    shl-int/lit8 v1, v1, 0xe

    const v2, 0xffc000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    and-int/lit16 v1, v1, 0x3fff

    or-int/2addr v0, v1

    return v0
.end method

.method private buildStateInt()I
    .locals 3

    .prologue
    .line 620
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v0, v0, 0x1c

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v1, v1, 0x16

    const/high16 v2, 0xc00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const v2, 0x3fffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const v2, 0xffff

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .local v0, "bat":I
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 525
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 526
    shr-int/lit8 v1, v0, 0x10

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 527
    shr-int/lit8 v1, v0, 0x14

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 528
    shr-int/lit8 v1, v0, 0x18

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 530
    and-int v1, v0, v2

    int-to-char v1, v1

    iput-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 531
    shr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v2

    int-to-char v1, v1

    iput-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 533
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 680
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 681
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 682
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 683
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 684
    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 685
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 686
    iput-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 687
    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 688
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public readDelta(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const v11, 0x3fffff

    const v7, 0x3fffd

    const/high16 v10, -0x400000

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 628
    .local v4, "firstToken":I
    const v6, 0x3ffff

    and-int v3, v4, v6

    .line 629
    .local v3, "deltaTimeToken":I
    shr-int/lit8 v6, v4, 0x12

    and-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 633
    if-ge v3, v7, :cond_1

    .line 634
    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 649
    :goto_0
    const/high16 v6, 0x100000

    and-int/2addr v6, v4

    if-eqz v6, :cond_0

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 651
    .local v0, "batteryLevelInt":I
    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 652
    shr-int/lit8 v6, v0, 0xe

    and-int/lit16 v6, v6, 0x3ff

    int-to-char v6, v6

    iput-char v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 653
    and-int/lit16 v6, v0, 0x3fff

    int-to-char v6, v6

    iput-char v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 661
    .end local v0    # "batteryLevelInt":I
    :cond_0
    const/high16 v6, 0x200000

    and-int/2addr v6, v4

    if-eqz v6, :cond_4

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 663
    .local v5, "stateInt":I
    and-int v6, v4, v10

    and-int v7, v5, v11

    or-int/2addr v6, v7

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 664
    shr-int/lit8 v6, v5, 0x1c

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 665
    shr-int/lit8 v6, v5, 0x18

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 666
    shr-int/lit8 v6, v5, 0x16

    and-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    iput-byte v6, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 676
    .end local v5    # "stateInt":I
    :goto_1
    return-void

    .line 635
    :cond_1
    if-ne v3, v7, :cond_2

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 637
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .line 639
    :cond_2
    const v6, 0x3fffe

    if-ne v3, v6, :cond_3

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 641
    .local v1, "delta":I
    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    .line 644
    .end local v1    # "delta":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 646
    .local v1, "delta":J
    iget-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v6, v1

    iput-wide v6, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    .line 674
    .end local v1    # "delta":J
    :cond_4
    and-int v6, v4, v10

    iget v7, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v7, v11

    or-int/2addr v6, v7

    iput v6, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    goto :goto_1
.end method

.method public same(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 715
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "cmd"    # B
    .param p4, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 703
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 704
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 705
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 706
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 707
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 708
    iget-byte v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 709
    iget-char v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 710
    iget-char v0, p4, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 711
    iget v0, p4, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 712
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 691
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 692
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 693
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 694
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 695
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 696
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 697
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    .line 698
    iget-char v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    .line 699
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 700
    return-void
.end method

.method public writeDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 15
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "last"    # Landroid/os/BatteryStats$HistoryItem;

    .prologue
    .line 550
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-byte v11, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 551
    :cond_0
    const v11, 0x3fffd

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v11}, Landroid/os/BatteryStats$HistoryItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 611
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    iget-wide v11, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v11, v13

    .line 557
    .local v3, "deltaTime":J
    invoke-direct/range {p2 .. p2}, Landroid/os/BatteryStats$HistoryItem;->buildBatteryLevelInt()I

    move-result v7

    .line 558
    .local v7, "lastBatteryLevelInt":I
    invoke-direct/range {p2 .. p2}, Landroid/os/BatteryStats$HistoryItem;->buildStateInt()I

    move-result v8

    .line 561
    .local v8, "lastStateInt":I
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-ltz v11, :cond_3

    const-wide/32 v11, 0x7fffffff

    cmp-long v11, v3, v11

    if-lez v11, :cond_8

    .line 562
    :cond_3
    const v5, 0x3ffff

    .line 568
    .local v5, "deltaTimeToken":I
    :goto_1
    iget-byte v11, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    shl-int/lit8 v11, v11, 0x12

    or-int/2addr v11, v5

    iget v12, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v13, -0x400000

    and-int/2addr v12, v13

    or-int v6, v11, v12

    .line 571
    .local v6, "firstToken":I
    invoke-direct {p0}, Landroid/os/BatteryStats$HistoryItem;->buildBatteryLevelInt()I

    move-result v1

    .line 572
    .local v1, "batteryLevelInt":I
    if-eq v1, v7, :cond_a

    const/4 v2, 0x1

    .line 573
    .local v2, "batteryLevelIntChanged":Z
    :goto_2
    if-eqz v2, :cond_4

    .line 574
    const/high16 v11, 0x100000

    or-int/2addr v6, v11

    .line 576
    :cond_4
    invoke-direct {p0}, Landroid/os/BatteryStats$HistoryItem;->buildStateInt()I

    move-result v9

    .line 577
    .local v9, "stateInt":I
    if-eq v9, v8, :cond_b

    const/4 v10, 0x1

    .line 578
    .local v10, "stateIntChanged":Z
    :goto_3
    if-eqz v10, :cond_5

    .line 579
    const/high16 v11, 0x200000

    or-int/2addr v6, v11

    .line 581
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const v11, 0x3fffe

    if-lt v5, v11, :cond_6

    .line 586
    const v11, 0x3fffe

    if-ne v5, v11, :cond_c

    .line 588
    long-to-int v11, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 595
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    :cond_7
    if-eqz v10, :cond_1

    .line 603
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 563
    .end local v1    # "batteryLevelInt":I
    .end local v2    # "batteryLevelIntChanged":Z
    .end local v5    # "deltaTimeToken":I
    .end local v6    # "firstToken":I
    .end local v9    # "stateInt":I
    .end local v10    # "stateIntChanged":Z
    :cond_8
    const-wide/32 v11, 0x3fffd

    cmp-long v11, v3, v11

    if-ltz v11, :cond_9

    .line 564
    const v5, 0x3fffe

    .restart local v5    # "deltaTimeToken":I
    goto :goto_1

    .line 566
    .end local v5    # "deltaTimeToken":I
    :cond_9
    long-to-int v5, v3

    .restart local v5    # "deltaTimeToken":I
    goto :goto_1

    .line 572
    .restart local v1    # "batteryLevelInt":I
    .restart local v6    # "firstToken":I
    :cond_a
    const/4 v2, 0x0

    goto :goto_2

    .line 577
    .restart local v2    # "batteryLevelIntChanged":Z
    .restart local v9    # "stateInt":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 591
    .restart local v10    # "stateIntChanged":Z
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 509
    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v1, v1, 0xff

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xf0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v2, v2, 0x14

    const/high16 v3, 0xf00000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xf000000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 515
    .local v0, "bat":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-char v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:C

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-char v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 518
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    return-void
.end method
