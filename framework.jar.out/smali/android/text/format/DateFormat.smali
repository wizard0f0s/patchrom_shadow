.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'

.field public static final CAPITAL_AM_PM:C = 'A'

.field public static final DATE:C = 'd'

.field public static final DAY:C = 'E'

.field public static final HOUR:C = 'h'

.field public static final HOUR_OF_DAY:C = 'k'

.field public static final MINUTE:C = 'm'

.field public static final MONTH:C = 'M'

.field public static final QUOTE:C = '\''

.field public static final SECONDS:C = 's'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .registers 7
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 585
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_15

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_15

    .line 586
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 587
    const/4 v2, 0x1

    .line 618
    :goto_14
    return v2

    .line 590
    :cond_15
    const/4 v1, 0x0

    .line 593
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 594
    add-int/lit8 p2, p2, -0x1

    .line 596
    :goto_1d
    if-ge p1, p2, :cond_42

    .line 597
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 599
    .local v0, c:C
    if-ne v0, v3, :cond_44

    .line 601
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_3d

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 603
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 604
    add-int/lit8 p2, p2, -0x1

    .line 605
    add-int/lit8 v1, v1, 0x1

    .line 606
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 609
    :cond_3d
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .end local v0           #c:C
    :cond_42
    move v2, v1

    .line 618
    goto :goto_14

    .line 613
    .restart local v0       #c:C
    :cond_44
    add-int/lit8 p1, p1, 0x1

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static final format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 407
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 15
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v12, 0xa

    const/16 v11, 0x9

    const/16 v10, 0xb

    .line 433
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 437
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 439
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v3, :cond_cb

    .line 442
    const/4 v1, 0x1

    .line 443
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 445
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_25

    .line 446
    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 447
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 439
    :cond_23
    :goto_23
    add-int/2addr v2, v1

    goto :goto_10

    .line 451
    :cond_25
    :goto_25
    add-int v7, v2, v1

    if-ge v7, v3, :cond_34

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_34

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 457
    :cond_34
    sparse-switch v0, :sswitch_data_da

    .line 517
    const/4 v4, 0x0

    .line 521
    .local v4, replacement:Ljava/lang/String;
    :goto_38
    if-eqz v4, :cond_23

    .line 522
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 523
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 524
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_23

    .line 459
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_48
    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/text/SimpleDateFormat;->getAMPMString(ILjava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .line 466
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_5d
    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/text/SimpleDateFormat;->getAMPMString(ILjava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .line 472
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_72
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 473
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .line 476
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_7c
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 477
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_8b

    const/16 v7, 0x14

    :goto_86
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 481
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .end local v4           #replacement:Ljava/lang/String;
    :cond_8b
    move v7, v12

    .line 477
    goto :goto_86

    .line 484
    .end local v6           #temp:I
    :sswitch_8d
    invoke-virtual {p1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 486
    .restart local v6       #temp:I
    if-nez v6, :cond_95

    .line 487
    const/16 v6, 0xc

    .line 489
    :cond_95
    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 490
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .line 493
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_9a
    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 494
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .line 497
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a3
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 498
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .line 501
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_ae
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 502
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_38

    .line 505
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_b3
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 506
    .restart local v4       #replacement:Ljava/lang/String;
    goto/16 :goto_38

    .line 509
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_bf
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 510
    .restart local v4       #replacement:Ljava/lang/String;
    goto/16 :goto_38

    .line 513
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_c5
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 514
    .restart local v4       #replacement:Ljava/lang/String;
    goto/16 :goto_38

    .line 528
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_cb
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_d5

    .line 529
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 531
    :goto_d4
    return-object v7

    :cond_d5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_d4

    .line 457
    :sswitch_data_da
    .sparse-switch
        0x41 -> :sswitch_5d
        0x45 -> :sswitch_7c
        0x4d -> :sswitch_ae
        0x61 -> :sswitch_48
        0x64 -> :sswitch_72
        0x68 -> :sswitch_8d
        0x6b -> :sswitch_9a
        0x6d -> :sswitch_a3
        0x73 -> :sswitch_b3
        0x79 -> :sswitch_c5
        0x7a -> :sswitch_bf
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 418
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 420
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 422
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .registers 8
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 561
    div-int/lit16 p0, p0, 0x3e8

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_2a

    .line 565
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    neg-int p0, p0

    .line 571
    :goto_11
    div-int/lit16 v0, p0, 0xe10

    .line 572
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 574
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 568
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_2a
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11
.end method

.method public static final getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 4
    .parameter "context"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 287
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getDateFormatOrder(Landroid/content/Context;)[C
    .registers 15
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 363
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_3e

    .line 364
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 366
    .local v6, index:I
    const/4 v2, 0x0

    .line 367
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 368
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 370
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1a
    if-ge v5, v7, :cond_3c

    aget-char v1, v0, v5

    .line 371
    .local v1, c:C
    if-nez v2, :cond_27

    if-ne v1, v12, :cond_27

    .line 372
    const/4 v2, 0x1

    .line 373
    aput-char v12, v8, v6

    .line 374
    add-int/lit8 v6, v6, 0x1

    .line 377
    :cond_27
    if-nez v3, :cond_30

    if-ne v1, v11, :cond_30

    .line 378
    const/4 v3, 0x1

    .line 379
    aput-char v11, v8, v6

    .line 380
    add-int/lit8 v6, v6, 0x1

    .line 383
    :cond_30
    if-nez v4, :cond_39

    if-ne v1, v13, :cond_39

    .line 384
    const/4 v4, 0x1

    .line 385
    aput-char v13, v8, v6

    .line 386
    add-int/lit8 v6, v6, 0x1

    .line 370
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 389
    .end local v1           #c:C
    :cond_3c
    return-object v8

    .line 363
    nop

    :array_3e
    .array-data 0x2
        0x64t 0x0t
        0x4dt 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "MM"

    .line 293
    if-eqz p1, :cond_ac

    .line 294
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 295
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 296
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 298
    .local v4, year:I
    if-ltz v1, :cond_ac

    if-ltz v0, :cond_ac

    if-ltz v4, :cond_ac

    .line 299
    const v5, 0x104007d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_56

    if-ge v4, v0, :cond_56

    .line 301
    if-ge v1, v0, :cond_42

    .line 302
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v10, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_40
    move-object v3, p1

    .line 330
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_41
    return-object v3

    .line 304
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_42
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v10, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 306
    :cond_56
    if-ge v1, v0, :cond_82

    .line 307
    if-ge v0, v4, :cond_6e

    .line 308
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v10, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 310
    :cond_6e
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v10, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 313
    :cond_82
    if-ge v1, v4, :cond_98

    .line 314
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v10, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 316
    :cond_98
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v10, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 329
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_ac
    const v5, 0x104007c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 330
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_41
.end method

.method public static final getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .parameter "context"

    .prologue
    .line 340
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .parameter "context"

    .prologue
    .line 350
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 4
    .parameter "inDate"
    .parameter "count"

    .prologue
    .line 535
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 537
    .local v0, month:I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_f

    .line 538
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 543
    :goto_e
    return-object v1

    .line 539
    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    .line 540
    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 543
    :cond_19
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static final getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 5
    .parameter "context"

    .prologue
    .line 250
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 253
    .local v0, b24:Z
    if-eqz v0, :cond_13

    .line 254
    const v1, 0x104007a

    .line 259
    .local v1, res:I
    :goto_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 256
    .end local v1           #res:I
    :cond_13
    const v1, 0x1040079

    .restart local v1       #res:I
    goto :goto_9
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 7
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 548
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 550
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v2, 0x2

    if-ge p1, v2, :cond_1a

    .line 551
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 556
    :goto_19
    return-object v2

    .line 555
    :cond_1a
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    move v0, v2

    .line 556
    .local v0, dst:Z
    :goto_22
    invoke-virtual {v1, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .end local v0           #dst:Z
    :cond_27
    move v0, v3

    .line 555
    goto :goto_22
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 580
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 581
    .local v0, year:I
    if-gt p1, v2, :cond_f

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "12"

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, value:Ljava/lang/String;
    if-nez v6, :cond_5b

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v2, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 210
    .local v2, locale:Ljava/util/Locale;
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 211
    :try_start_1e
    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v8, :cond_2f

    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v8, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 212
    sget-boolean v8, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v7

    move v7, v8

    .line 240
    .end local v2           #locale:Ljava/util/Locale;
    :goto_2e
    return v7

    .line 214
    .restart local v2       #locale:Ljava/util/Locale;
    :cond_2f
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_68

    .line 216
    invoke-static {v9, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    .line 220
    .local v3, natural:Ljava/text/DateFormat;
    instance-of v7, v3, Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_6e

    .line 221
    move-object v0, v3

    check-cast v0, Ljava/text/SimpleDateFormat;

    move-object v5, v0

    .line 222
    .local v5, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, pattern:Ljava/lang/String;
    const/16 v7, 0x48

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_6b

    .line 225
    const-string v6, "24"

    .line 233
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #sdf:Ljava/text/SimpleDateFormat;
    :goto_4a
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 234
    :try_start_4d
    sput-object v2, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 235
    const-string v8, "12"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_71

    move v8, v9

    :goto_58
    sput-boolean v8, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 236
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_4d .. :try_end_5b} :catchall_73

    .line 239
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #natural:Ljava/text/DateFormat;
    :cond_5b
    if-eqz v6, :cond_76

    const-string v7, "12"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_76

    move v1, v9

    .local v1, b24:Z
    :goto_66
    move v7, v1

    .line 240
    goto :goto_2e

    .line 214
    .end local v1           #b24:Z
    .restart local v2       #locale:Ljava/util/Locale;
    :catchall_68
    move-exception v8

    :try_start_69
    monitor-exit v7
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v8

    .line 227
    .restart local v3       #natural:Ljava/text/DateFormat;
    .restart local v4       #pattern:Ljava/lang/String;
    .restart local v5       #sdf:Ljava/text/SimpleDateFormat;
    :cond_6b
    const-string v6, "12"

    goto :goto_4a

    .line 230
    .end local v4           #pattern:Ljava/lang/String;
    .end local v5           #sdf:Ljava/text/SimpleDateFormat;
    :cond_6e
    const-string v6, "12"

    goto :goto_4a

    :cond_71
    move v8, v10

    .line 235
    goto :goto_58

    .line 236
    :catchall_73
    move-exception v8

    :try_start_74
    monitor-exit v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v8

    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #natural:Ljava/text/DateFormat;
    :cond_76
    move v1, v10

    .line 239
    goto :goto_66
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .registers 8
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 622
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_29

    .line 625
    new-array v0, p1, [C

    .line 627
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, p1, :cond_16

    .line 628
    const/16 v3, 0x30

    aput-char v3, v0, v1

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 630
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 631
    new-instance v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 633
    .end local v0           #buf:[C
    .end local v1           #i:I
    .restart local v2       #val:Ljava/lang/String;
    :cond_29
    return-object v2
.end method
