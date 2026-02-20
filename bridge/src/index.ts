#!/usr/bin/env node
/**
 * nanobot WhatsApp 桥接器
 *
 * 此桥接器通过 WebSocket 将 WhatsApp Web 连接到 nanobot 的 Python 后端。
 * 它处理身份验证、消息转发和重新连接逻辑。
 *
 * 使用方法:
 *   npm run build && npm start
 *
 * 或使用自定义设置:
 *   BRIDGE_PORT=3001 AUTH_DIR=~/.nanobot/whatsapp npm start
 */

// Polyfill crypto for Baileys in ESM
import { webcrypto } from 'crypto';
if (!globalThis.crypto) {
  (globalThis as any).crypto = webcrypto;
}

import { BridgeServer } from './server.js';
import { homedir } from 'os';
import { join } from 'path';

const PORT = parseInt(process.env.BRIDGE_PORT || '3001', 10);
const AUTH_DIR = process.env.AUTH_DIR || join(homedir(), '.nanobot', 'whatsapp-auth');
const TOKEN = process.env.BRIDGE_TOKEN || undefined;

console.log('🐈 nanobot WhatsApp Bridge');
console.log('========================\n');

const server = new BridgeServer(PORT, AUTH_DIR, TOKEN);

// Handle graceful shutdown
process.on('SIGINT', async () => {
  console.log('\n\n正在关闭...');
  await server.stop();
  process.exit(0);
});

process.on('SIGTERM', async () => {
  await server.stop();
  process.exit(0);
});

// 启动服务器
server.start().catch((error) => {
  console.error('启动桥接器失败:', error);
  process.exit(1);
});
