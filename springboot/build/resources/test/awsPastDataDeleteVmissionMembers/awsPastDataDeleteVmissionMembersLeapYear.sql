-- カードコードタイプ
INSERT INTO
    local.cardcodes (
        card_code,
        card_name,
        image_path,
        permission_type,
        return_type,
        is_deleted,
        created_by,
        updated_by
    )
VALUES
    ('123456', 'ガード名1', '', 1, 1, false, 1, 1)
	,('7777777', 'ガード名1', '', 1, 1, false, 1, 1);;

-- 会員
INSERT INTO
    local.members (
        member_id,
        gid,
        card_code,
        is_deleted,
        created_by,
        updated_by
    )
VALUES
    (
        'uc87492f830f8b4b03686f94abc07725',
        'abc',
        '123456',
        false,
        1,
        1
    ),(
        'uc87492f830f8b4b03686f94abc07726',
        'efg',
        '7777777',
        false,
        1,
        1
    )
    ;

-- ブランド
INSERT INTO
    local.brands (
        brand_id,
        merchant_id,
        brand_name,
        brand_katakana,
        brand_text,
        brand_category_id,
        icon_path,
        start_date,
        end_date,
        is_vpointup_program_target,
        sort_order,
        priority_display_flg,
        no_display_flg,
        is_deleted,
        created_by,
        updated_by
    )
VALUES
    (
        'BR0123456789',
        'CD0123456789',
        'ブランド名_1',
        'ブランド名カタカナ_1',
        'ブランドの説明',
        '001',
        'http://アイコンURL',
        '2025-01-01 00:00:00',
        '2025-12-31 00:00:00',
        false,
        0,
        1,
        true,
        false,
        1,
        1
    );

-- ブランドミッションマスタ
INSERT INTO
    local.brand_missions (
        vmission_id,
        brand_id,
        condition_price,
        privilege_point,
        validity_start_date,
        validity_end_date,
        steps,
        note,
        plus_reward,
        privilege_season,
        is_deleted,
        created_by,
        updated_by
    )
VALUES
    (
        '9377e0303faae09a2d25ea5a29e291da',
        'BR0123456789',
        1000,
        2000,
        '2025-01-01 00:00:00',
        '2025-12-31 00:00:00',
        1,
        'HTMLnote',
        'HTMLplus_reward',
        'HTMLprivilege_season',
        false,
        1,
        1
    );

-- Vミッション配布
INSERT INTO
    local.vmission_members (vmission_member_id, member_id, vmission_id, target_month, is_deleted, created_by, updated_by)
VALUES
    ('1a6fef07a1ce677795af16edfd222870','uc87492f830f8b4b03686f94abc07725','9377e0303faae09a2d25ea5a29e291da','202311', false, 1, 1 )
     ,('1a6fef07a1ce677795af16edfd222871','uc87492f830f8b4b03686f94abc07725','9377e0303faae09a2d25ea5a29e291da','202312', false, 1, 1 )
     ,('1a6fef07a1ce677795af16edfd222872','uc87492f830f8b4b03686f94abc07725','9377e0303faae09a2d25ea5a29e291da','202401', false, 1, 1 )
     ,('1a6fef07a1ce677795af16edfd222873','uc87492f830f8b4b03686f94abc07725','9377e0303faae09a2d25ea5a29e291da','202402', false, 1, 1 )
     ,('1a6fef07a1ce677795af16edfd222874','uc87492f830f8b4b03686f94abc07725','9377e0303faae09a2d25ea5a29e291da','202403', false, 1, 1 )
	;


-- Vミッション進捗
INSERT INTO
    local.vmission_progress (
        id,
        vmission_member_id,
        count,
        rate,
        created_by,
        updated_by
    )
VALUES
    (
        1,
        '1a6fef07a1ce677795af16edfd222870',
        1,
        0.5,
        1,
        1
    );
