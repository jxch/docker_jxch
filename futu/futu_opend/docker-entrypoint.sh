#!/usr/bin/env bash
set -e

cd /opt/FutuOpenD/bin

CMD="./FutuOpenD"

if [ -n "${LOGIN_ACCOUNT}" ]; then
  CMD="$CMD -login_account=${LOGIN_ACCOUNT}"
fi

if [ -n "${LOGIN_PWD}" ]; then
  CMD="$CMD -login_pwd=${LOGIN_PWD}"
fi

if [ -n "${LOGIN_PWD_MD5}" ]; then
  CMD="$CMD -login_pwd_md5=${LOGIN_PWD_MD5}"
fi

if [ -n "${LANG_MODE}" ]; then
  CMD="$CMD -lang=${LANG_MODE}"
fi

if [ -n "${API_IP}" ]; then
  CMD="$CMD -api_ip=${API_IP}"
fi

if [ -n "${API_PORT}" ]; then
  CMD="$CMD -api_port=${API_PORT}"
fi

if [ -n "${CFG_FILE}" ]; then
  CMD="$CMD -cfg_file=${CFG_FILE}"
fi

if [ -n "${CONSOLE_MODE}" ]; then
  CMD="$CMD -console=${CONSOLE_MODE}"
fi

if [ -n "${NO_MONITOR}" ]; then
  CMD="$CMD -no_monitor=${NO_MONITOR}"
fi

if [ -n "${LOG_LEVEL}" ]; then
  CMD="$CMD -log_level=${LOG_LEVEL}"
fi

if [ -n "${WEBSOCKET_IP}" ]; then
  CMD="$CMD -websocket_ip=${WEBSOCKET_IP}"
fi

if [ -n "${WEBSOCKET_PORT}" ]; then
  CMD="$CMD -websocket_port=${WEBSOCKET_PORT}"
fi

if [ -n "${WEBSOCKET_PRIVATE_KEY}" ]; then
  CMD="$CMD -websocket_private_key=${WEBSOCKET_PRIVATE_KEY}"
fi

if [ -n "${WEBSOCKET_CERT}" ]; then
  CMD="$CMD -websocket_cert=${WEBSOCKET_CERT}"
fi

if [ -n "${WEBSOCKET_KEY_MD5}" ]; then
  CMD="$CMD -websocket_key_md5=${WEBSOCKET_KEY_MD5}"
fi

if [ -n "${PRICE_REMINDER_PUSH}" ]; then
  CMD="$CMD -price_reminder_push=${PRICE_REMINDER_PUSH}"
fi

if [ -n "${AUTO_HOLD_QUOTE_RIGHT}" ]; then
  CMD="$CMD -auto_hold_quote_right=${AUTO_HOLD_QUOTE_RIGHT}"
fi

if [ -n "${FUTURE_TRADE_API_TIME_ZONE}" ]; then
  CMD="$CMD -future_trade_api_time_zone=${FUTURE_TRADE_API_TIME_ZONE}"
fi

echo "Starting FutuOpenD with command:"
echo "${CMD}"

exec sh -c "${CMD}"