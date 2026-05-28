SELECT
  t.transaction_id,
  t.user_id,
  u.user_name,
  u.field_of_business,
  u.join_date,
  'Whatsapp' AS channel,
  t.message_type,
  t.price,
  t.last_status AS status,
  t.is_charge,
  t.created_at,
  t.received_timestamp

FROM `nextproject-001.TELKOM_OCA.Whatsapp` t
LEFT JOIN `nextproject-001.TELKOM_OCA.Users` u ON t.user_id = u.user_id

UNION ALL

SELECT
  t.transaction_id,
  t.user_id,
  u.user_name,
  u.field_of_business,
  u.join_date,
  'SMS' AS channel,
  NULL AS message_type,
  t.total_price AS price,
  t.message_status AS status,
  t.is_charge,
  t.created_at,
  NULL AS received_timestamp

FROM `nextproject-001.TELKOM_OCA.Sms` t
LEFT JOIN `nextproject-001.TELKOM_OCA.Users` u ON t.user_id = u.user_id

UNION ALL

SELECT
  t.transaction_id,
  t.user_id,
  u.user_name,
  u.field_of_business,
  u.join_date,
  'Email' AS channel,
  NULL AS message_type,
  t.price,
  t.message_status AS status,
  t.is_charge,
  t.created_at,
  NULL AS received_timestamp

FROM `nextproject-001.TELKOM_OCA.Email` t
LEFT JOIN `nextproject-001.TELKOM_OCA.Users` u ON t.user_id = u.user_id

UNION ALL

SELECT
  t.transaction_id,
  t.user_id,
  u.user_name,
  u.field_of_business,
  u.join_date,
  'Call' AS channel,
  NULL AS message_type,
  t.total_price AS price,
  t.message_status AS status,
  t.is_charge,
  t.created_at,
  NULL AS received_timestamp

FROM `nextproject-001.TELKOM_OCA.Call` t
LEFT JOIN `nextproject-001.TELKOM_OCA.Users` u ON t.user_id = u.user_id
