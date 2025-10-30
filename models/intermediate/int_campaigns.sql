{{ dbt_utils.union_relations(
    relations=[
        ref('stg_raw__adwords'),
        ref('stg_raw__bing'),
        ref('stg_raw__facebook'),
        ref('stg_raw__criteo')
    ],
    include=[
        'date_date',
        'paid_source',
        'campaign_key',
        'campgn_name',
        'ads_cost',
        'impression',
        'click',
    ],
    source_column_name=None
) }}