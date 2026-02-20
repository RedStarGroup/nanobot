<div align="center">
  <img src="nanobot_logo.png" alt="nanobot" width="500">
  <h1>nanobot: 超轻量级个人 AI 助手</h1>
  <p>
    <a href="https://pypi.org/project/nanobot-ai/"><img src="https://img.shields.io/pypi/v/nanobot-ai" alt="PyPI"></a>
    <a href="https://pepy.tech/project/nanobot-ai"><img src="https://static.pepy.tech/badge/nanobot-ai" alt="Downloads"></a>
    <img src="https://img.shields.io/badge/python-≥3.11-blue" alt="Python">
    <img src="https://img.shields.io/badge/license-MIT-green" alt="License">
    <a href="./COMMUNICATION.md"><img src="https://img.shields.io/badge/Feishu-Group-E9DBFC?style=flat&logo=feishu&logoColor=white" alt="Feishu"></a>
    <a href="./COMMUNICATION.md"><img src="https://img.shields.io/badge/WeChat-Group-C5EAB4?style=flat&logo=wechat&logoColor=white" alt="WeChat"></a>
    <a href="https://discord.gg/MnCvHqpUGB"><img src="https://img.shields.io/badge/Discord-Community-5865F2?style=flat&logo=discord&logoColor=white" alt="Discord"></a>
  </p>
</div>

🐈 **nanobot** 是一个受 [OpenClaw](https://github.com/openclaw/openclaw) 启发的**超轻量级**个人 AI 助手

⚡️ 仅用 **~4,000** 行代码提供核心 agent 功能 — 比 Clawdbot 的 430k+ 行**小 99%**。

📏 实时代码行数: **3,761 行** (随时运行 `bash core_agent_lines.sh` 验证)

## 📢 新闻

- **2026-02-17** 🎉 发布 **v0.1.4** — MCP 支持、进度流式传输、新提供商和多个渠道改进。请查看[发布说明](https://github.com/HKUDS/nanobot/releases/tag/v0.1.4)了解详情。
- **2026-02-16** 🦞 nanobot 现在集成了 [ClawHub](https://clawhub.ai) 技能 — 搜索并安装公共 agent 技能。
- **2026-02-15** 🔑 nanobot 现在支持 OpenAI Codex 提供商，具有 OAuth 登录支持。
- **2026-02-14** 🔌 nanobot 现在支持 MCP! 查看 [MCP 部分](#mcp-model-context-protocol)了解详情。
- **2026-02-13** 🎉 发布 **v0.1.3.post7** — 包括安全加固和多项改进。**请升级到最新版本以解决安全问题**。查看[发布说明](https://github.com/HKUDS/nanobot/releases/tag/v0.1.3.post7)了解更多详情。
- **2026-02-12** 🧠 重新设计的记忆系统 — 代码更少，更可靠。加入[讨论](https://github.com/HKUDS/nanobot/discussions/566)!
- **2026-02-11** ✨ 增强的 CLI 体验并添加了 MiniMax 支持!
- **2026-02-10** 🎉 发布 **v0.1.3.post6** 并有改进! 查看更新[说明](https://github.com/HKUDS/nanobot/releases/tag/v0.1.3.post6)和我们的[路线图](https://github.com/HKUDS/nanobot/discussions/431)。
- **2026-02-09** 💬 添加了 Slack、Email 和 QQ 支持 — nanobot 现在支持多个聊天平台!
- **2026-02-08** 🔧 重构了提供商 — 添加新的 LLM 提供商现在只需 2 个简单步骤! 查看[这里](#providers)。

<details>
<summary>早期新闻</summary>

- **2026-02-07** 🚀 发布 **v0.1.3.post5**，支持 Qwen 和多项关键改进! 查看[这里](https://github.com/HKUDS/nanobot/releases/tag/v0.1.3.post5)了解详情。
- **2026-02-06** ✨ 添加了 Moonshot/Kimi 提供商、Discord 集成和增强的安全加固!
- **2026-02-05** ✨ 添加了飞书渠道、DeepSeek 提供商和增强的定时任务支持!
- **2026-02-04** 🚀 发布 **v0.1.3.post4**，支持多提供商和 Docker! 查看[这里](https://github.com/HKUDS/nanobot/releases/tag/v0.1.3.post4)了解详情。
- **2026-02-03** ⚡ 集成了 vLLM 用于本地 LLM 支持并改进了自然语言任务调度!
- **2026-02-02** 🎉 nanobot 正式发布! 欢迎尝试 🐈 nanobot!

</details>

## nanobot 的主要特性:

🪶 **超轻量级**: 仅 ~4,000 行核心 agent 代码 — 比 Clawdbot 小 99%。

🔬 **研究就绪**: 干净、可读的代码，易于理解、修改和扩展以进行研究。

⚡️ **闪电般快速**: 最小的占用空间意味着更快的启动、更低的资源使用和更快的迭代。

💎 **易于使用**: 一键部署，您就可以开始了。

## 🏗️ 架构

<p align="center">
  <img src="nanobot_arch.png" alt="nanobot architecture" width="800">
</p>

## ✨ Features

<table align="center">
  <tr align="center">
    <th><p align="center">📈 24/7 实时市场分析</p></th>
    <th><p align="center">🚀 全栈软件工程师</p></th>
    <th><p align="center">📅 智能日常事务管理器</p></th>
    <th><p align="center">📚 个人知识助手</p></th>
  </tr>
  <tr>
    <td align="center"><p align="center"><img src="case/search.gif" width="180" height="400"></p></td>
    <td align="center"><p align="center"><img src="case/code.gif" width="180" height="400"></p></td>
    <td align="center"><p align="center"><img src="case/scedule.gif" width="180" height="400"></p></td>
    <td align="center"><p align="center"><img src="case/memory.gif" width="180" height="400"></p></td>
  </tr>
  <tr>
    <td align="center">发现 • 洞察 • 趋势</td>
    <td align="center">开发 • 部署 • 扩展</td>
    <td align="center">安排 • 自动化 • 组织</td>
    <td align="center">学习 • 记忆 • 推理</td>
  </tr>
</table>

## 📦 安装

**从源代码安装** (最新功能，推荐用于开发)

```bash
git clone https://github.com/HKUDS/nanobot.git
cd nanobot
pip install -e .
```

**使用 [uv](https://github.com/astral-sh/uv) 安装** (稳定、快速)

```bash
uv tool install nanobot-ai
```

**从 PyPI 安装** (稳定)

```bash
pip install nanobot-ai
```

## 🚀 快速开始

> [!TIP]
> 在 `~/.nanobot/config.json` 中设置您的 API 密钥。
> 获取 API 密钥: [OpenRouter](https://openrouter.ai/keys) (全球) · [Brave Search](https://brave.com/search/api/) (可选，用于网络搜索)

**1. 初始化**

```bash
nanobot onboard
```

**2. 配置** (`~/.nanobot/config.json`)

将这**两部分**添加或合并到您的配置中 (其他选项有默认值)。

*设置您的 API 密钥* (例如 OpenRouter，推荐给全球用户):
```json
{
  "providers": {
    "openrouter": {
      "apiKey": "sk-or-v1-xxx"
    }
  }
}
```

*设置您的模型*:
```json
{
  "agents": {
    "defaults": {
      "model": "anthropic/claude-opus-4-5"
    }
  }
}
```

**3. 聊天**

```bash
nanobot agent
```

就这样! 您在 2 分钟内就有了一个可用的 AI 助手。

## 💬 聊天应用

将 nanobot 连接到您最喜欢的聊天平台。

| 渠道 | 您需要什么 |
|---------|---------------|
| **Telegram** | 来自 @BotFather 的 Bot 令牌 |
| **Discord** | Bot 令牌 + 消息内容意图 |
| **WhatsApp** | 二维码扫描 |
| **Feishu** | App ID + App Secret |
| **Mochat** | Claw 令牌 (可自动设置) |
| **DingTalk** | App Key + App Secret |
| **Slack** | Bot 令牌 + 应用级令牌 |
| **Email** | IMAP/SMTP 凭据 |
| **QQ** | App ID + App Secret |

<details>
<summary><b>Telegram</b> (推荐)</summary>

**1. 创建 bot**
- 打开 Telegram，搜索 `@BotFather`
- 发送 `/newbot`，按照提示操作
- 复制令牌

**2. 配置**

```json
{
  "channels": {
    "telegram": {
      "enabled": true,
      "token": "YOUR_BOT_TOKEN",
      "allowFrom": ["YOUR_USER_ID"]
    }
  }
}
```

> 您可以在 Telegram 设置中找到您的 **User ID**。它显示为 `@yourUserId`。
> 复制此值**不带 `@` 符号**并将其粘贴到配置文件中。


**3. 运行**

```bash
nanobot gateway
```

</details>

<details>
<summary><b>Mochat (Claw IM)</b></summary>

默认使用 **Socket.IO WebSocket**，带有 HTTP 轮询回退。

**1. 让 nanobot 为您设置 Mochat**

只需向 nanobot 发送此消息 (将 `xxx@xxx` 替换为您的真实电子邮件):

```
Read https://raw.githubusercontent.com/HKUDS/MoChat/refs/heads/main/skills/nanobot/skill.md and register on MoChat. My Email account is xxx@xxx Bind me as your owner and DM me on MoChat.
```

nanobot 将自动注册、配置 `~/.nanobot/config.json` 并连接到 Mochat。

**2. 重启网关**

```bash
nanobot gateway
```

就这样 — nanobot 处理其余部分!

<br>

<details>
<summary>手动配置 (高级)</summary>

如果您更喜欢手动配置，请将以下内容添加到 `~/.nanobot/config.json`:

> 保持 `claw_token` 私有。它应该只在 `X-Claw-Token` 标头中发送到您的 Mochat API 端点。

```json
{
  "channels": {
    "mochat": {
      "enabled": true,
      "base_url": "https://mochat.io",
      "socket_url": "https://mochat.io",
      "socket_path": "/socket.io",
      "claw_token": "claw_xxx",
      "agent_user_id": "6982abcdef",
      "sessions": ["*"],
      "panels": ["*"],
      "reply_delay_mode": "non-mention",
      "reply_delay_ms": 120000
    }
  }
}
```



</details>

</details>

<details>
<summary><b>Discord</b></summary>

**1. 创建 bot**
- 转到 https://discord.com/developers/applications
- 创建应用程序 → Bot → 添加 Bot
- 复制 bot 令牌

**2. 启用意图**
- 在 Bot 设置中，启用 **MESSAGE CONTENT INTENT**
- (可选) 如果您计划使用基于成员数据的允许列表，则启用 **SERVER MEMBERS INTENT**

**3. 获取您的 User ID**
- Discord 设置 → 高级 → 启用 **开发者模式**
- 右键单击您的头像 → **复制 User ID**

**4. 配置**

```json
{
  "channels": {
    "discord": {
      "enabled": true,
      "token": "YOUR_BOT_TOKEN",
      "allowFrom": ["YOUR_USER_ID"]
    }
  }
}
```

**5. 邀请 bot**
- OAuth2 → URL 生成器
- 范围: `bot`
- Bot 权限: `Send Messages`、`Read Message History`
- 打开生成的邀请 URL 并将 bot 添加到您的服务器

**6. 运行**

```bash
nanobot gateway
```

</details>

<details>
<summary><b>WhatsApp</b></summary>

需要 **Node.js ≥18**。

**1. 链接设备**

```bash
nanobot channels login
# 使用 WhatsApp 扫描二维码 → 设置 → 关联设备
```

**2. 配置**

```json
{
  "channels": {
    "whatsapp": {
      "enabled": true,
      "allowFrom": ["+1234567890"]
    }
  }
}
```

**3. 运行** (两个终端)

```bash
# 终端 1
nanobot channels login

# 终端 2
nanobot gateway
```

</details>

<details>
<summary><b>Feishu (飞书)</b></summary>

使用 **WebSocket** 长连接 — 不需要公共 IP。

**1. 创建飞书 bot**
- 访问 [飞书开放平台](https://open.feishu.cn/app)
- 创建新应用 → 启用 **Bot** 功能
- **权限**: 添加 `im:message` (发送消息)
- **事件**: 添加 `im.message.receive_v1` (接收消息)
  - 选择 **长连接** 模式 (需要先运行 nanobot 以建立连接)
- 从"凭据与基本信息"获取 **App ID** 和 **App Secret**
- 发布应用

**2. 配置**

```json
{
  "channels": {
    "feishu": {
      "enabled": true,
      "appId": "cli_xxx",
      "appSecret": "xxx",
      "encryptKey": "",
      "verificationToken": "",
      "allowFrom": []
    }
  }
}
```

> 对于长连接模式，`encryptKey` 和 `verificationToken` 是可选的。
> `allowFrom`: 留空以允许所有用户，或添加 `["ou_xxx"]` 以限制访问。

**3. 运行**

```bash
nanobot gateway
```

> [!TIP]
> 飞书使用 WebSocket 接收消息 — 不需要 webhook 或公共 IP!

</details>

<details>
<summary><b>QQ (QQ单聊)</b></summary>

使用 **botpy SDK** 和 WebSocket — 不需要公共 IP。目前仅支持**私聊**。

**1. 注册并创建 bot**
- 访问 [QQ 开放平台](https://q.qq.com) → 注册为开发者 (个人或企业)
- 创建新 bot 应用
- 转到 **开发设置 (Developer Settings)** → 复制 **AppID** 和 **AppSecret**

**2. 设置沙箱进行测试**
- 在 bot 管理控制台中，找到 **沙箱配置 (Sandbox Config)**
- 在 **在消息列表配置**下，点击 **添加成员** 并添加您自己的 QQ 号码
- 添加后，使用手机 QQ 扫描 bot 的二维码 → 打开 bot 资料 → 点击"发消息"开始聊天

**3. 配置**

> - `allowFrom`: 留空以允许公开访问，或添加用户 openids 以限制。当用户向 bot 发送消息时，您可以在 nanobot 日志中找到 openids。
> - 对于生产环境: 在 bot 控制台中提交审核并发布。查看 [QQ Bot 文档](https://bot.q.qq.com/wiki/) 了解完整发布流程。

```json
{
  "channels": {
    "qq": {
      "enabled": true,
      "appId": "YOUR_APP_ID",
      "secret": "YOUR_APP_SECRET",
      "allowFrom": []
    }
  }
}
```

**4. 运行**

```bash
nanobot gateway
```

现在从 QQ 向 bot 发送消息 — 它应该响应!

</details>

<details>
<summary><b>DingTalk (钉钉)</b></summary>

使用 **流模式** — 不需要公共 IP。

**1. 创建钉钉 bot**
- 访问 [钉钉开放平台](https://open-dev.dingtalk.com/)
- 创建新应用 -> 添加 **机器人** 功能
- **配置**:
  - 切换 **流模式** 开启
- **权限**: 添加发送消息所需的权限
- 从"凭据"获取 **AppKey** (Client ID) 和 **AppSecret** (Client Secret)
  - 发布应用

**2. 配置**

```json
{
  "channels": {
    "dingtalk": {
      "enabled": true,
      "clientId": "YOUR_APP_KEY",
      "clientSecret": "YOUR_APP_SECRET",
      "allowFrom": []
    }
  }
}
```

> `allowFrom`: 留空以允许所有用户，或添加 `["staffId"]` 以限制访问。

**3. 运行**

```bash
nanobot gateway
```

</details>

<details>
<summary><b>Slack</b></summary>

使用 **Socket 模式** — 不需要公共 URL。

**1. 创建 Slack 应用**
- 转到 [Slack API](https://api.slack.com/apps) → **创建新应用** → "从头开始"
- 选择名称并选择您的工作区

**2. 配置应用**
- **Socket 模式**: 切换开启 → 生成具有 `connections:write` 范围的 **应用级令牌** → 复制它 (`xapp-...`)
- **OAuth & 权限**: 添加 bot 范围: `chat:write`、`reactions:write`、`app_mentions:read`
- **事件订阅**: 切换开启 → 订阅 bot 事件: `message.im`、`message.channels`、`app_mention` → 保存更改
- **应用主页**: 滚动到 **显示标签** → 启用 **消息标签** → 勾选 **"允许用户从消息标签发送斜杠命令和消息"**
- **安装应用**: 点击 **安装到工作区** → 授权 → 复制 **Bot 令牌** (`xoxb-...`)

**3. 配置 nanobot**

```json
{
  "channels": {
    "slack": {
      "enabled": true,
      "botToken": "xoxb-...",
      "appToken": "xapp-...",
      "groupPolicy": "mention"
    }
  }
}
```

**4. 运行**

```bash
nanobot gateway
```

直接私信 bot 或在频道中 @提及它 — 它应该响应!

> [!TIP]
> - `groupPolicy`: `"mention"` (默认 — 仅在 @提及时响应)、`"open"` (响应所有频道消息) 或 `"allowlist"` (限制到特定频道)。
> - 私信策略默认为开放。设置 `"dm": {"enabled": false}` 以禁用私聊。

</details>

<details>
<summary><b>Email</b></summary>

给 nanobot 自己的电子邮件账户。它轮询 **IMAP** 以接收邮件并通过 **SMTP** 回复 — 就像个人电子邮件助手一样。

**1. 获取凭据 (Gmail 示例)**
- 为您的 bot 创建专用的 Gmail 账户 (例如 `my-nanobot@gmail.com`)
- 启用两步验证 → 创建[应用密码](https://myaccount.google.com/apppasswords)
- 将此应用密码用于 IMAP 和 SMTP

**2. 配置**

> - `consentGranted` 必须为 `true` 才能允许邮箱访问。这是一个安全门 — 设置 `false` 以完全禁用。
> - `allowFrom`: 留空以接受来自任何人的电子邮件，或限制到特定发件人。
> - `smtpUseTls` 和 `smtpUseSsl` 默认为 `true` / `false`，这对于 Gmail (端口 587 + STARTTLS) 是正确的。无需显式设置它们。
> - 如果您只想读取/分析电子邮件而不发送自动回复，请设置 `"autoReplyEnabled": false`。

```json
{
  "channels": {
    "email": {
      "enabled": true,
      "consentGranted": true,
      "imapHost": "imap.gmail.com",
      "imapPort": 993,
      "imapUsername": "my-nanobot@gmail.com",
      "imapPassword": "your-app-password",
      "smtpHost": "smtp.gmail.com",
      "smtpPort": 587,
      "smtpUsername": "my-nanobot@gmail.com",
      "smtpPassword": "your-app-password",
      "fromAddress": "my-nanobot@gmail.com",
      "allowFrom": ["your-real-email@gmail.com"]
    }
  }
}
```


**3. 运行**

```bash
nanobot gateway
```

</details>

## 🌐 Agent 社交网络

🐈 nanobot 能够链接到 agent 社交网络 (agent 社区)。**只需发送一条消息，您的 nanobot 就会自动加入!**

| 平台 | 如何加入 (向您的 bot 发送此消息) |
|----------|-------------|
| [**Moltbook**](https://www.moltbook.com/) | `Read https://moltbook.com/skill.md and follow the instructions to join Moltbook` |
| [**ClawdChat**](https://clawdchat.ai/) | `Read https://clawdchat.ai/skill.md and follow the instructions to join ClawdChat` |

只需将上述命令发送到您的 nanobot (通过 CLI 或任何聊天渠道)，它将处理其余部分。

## ⚙️ 配置

配置文件: `~/.nanobot/config.json`

### 提供商

> [!TIP]
> - **Groq** 通过 Whisper 提供免费语音转录。如果配置，Telegram 语音消息将自动转录。
> - **Zhipu Coding Plan**: 如果您使用 Zhipu 的编码计划，请在您的 zhipu 提供商配置中设置 `"apiBase": "https://open.bigmodel.cn/api/coding/paas/v4"`。
> - **MiniMax (中国大陆)**: 如果您的 API 密钥来自 MiniMax 的中国大陆平台 (minimaxi.com)，请在您的 minimax 提供商配置中设置 `"apiBase": "https://api.minimaxi.com/v1"`。

| Provider | Purpose | Get API Key |
|----------|---------|-------------|
| `custom` | 任何 OpenAI 兼容端点 (直接，无 LiteLLM) | — |
| `openrouter` | LLM (推荐，访问所有模型) | [openrouter.ai](https://openrouter.ai) |
| `anthropic` | LLM (Claude 直接) | [console.anthropic.com](https://console.anthropic.com) |
| `openai` | LLM (GPT 直接) | [platform.openai.com](https://platform.openai.com) |
| `deepseek` | LLM (DeepSeek 直接) | [platform.deepseek.com](https://platform.deepseek.com) |
| `groq` | LLM + **语音转录** (Whisper) | [console.groq.com](https://console.groq.com) |
| `gemini` | LLM (Gemini 直接) | [aistudio.google.com](https://aistudio.google.com) |
| `minimax` | LLM (MiniMax 直接) | [platform.minimax.io](https://platform.minimax.io) |
| `aihubmix` | LLM (API 网关，访问所有模型) | [aihubmix.com](https://aihubmix.com) |
| `siliconflow` | LLM (SiliconFlow/硅基流动，API 网关) | [siliconflow.cn](https://siliconflow.cn) |
| `dashscope` | LLM (Qwen) | [dashscope.console.aliyun.com](https://dashscope.console.aliyun.com) |
| `moonshot` | LLM (Moonshot/Kimi) | [platform.moonshot.cn](https://platform.moonshot.cn) |
| `zhipu` | LLM (Zhipu GLM) | [open.bigmodel.cn](https://open.bigmodel.cn) |
| `vllm` | LLM (本地，任何 OpenAI 兼容服务器) | — |
| `openai_codex` | LLM (Codex，OAuth) | `nanobot provider login openai-codex` |
| `github_copilot` | LLM (GitHub Copilot，OAuth) | `nanobot provider login github-copilot` |

<details>
<summary><b>OpenAI Codex (OAuth)</b></summary>

Codex 使用 OAuth 而不是 API 密钥。需要 ChatGPT Plus 或 Pro 账户。

**1. 登录:**
```bash
nanobot provider login openai-codex
```

**2. 设置模型** (合并到 `~/.nanobot/config.json`):
```json
{
  "agents": {
    "defaults": {
      "model": "openai-codex/gpt-5.1-codex"
    }
  }
}
```

**3. 聊天:**
```bash
nanobot agent -m "Hello!"
```

> Docker 用户: 使用 `docker run -it` 进行交互式 OAuth 登录。

</details>

<details>
<summary><b>Custom Provider (任何 OpenAI 兼容 API)</b></summary>

直接连接到任何 OpenAI 兼容端点 — LM Studio、llama.cpp、Together AI、Fireworks、Azure OpenAI 或任何自托管服务器。绕过 LiteLLM；模型名称按原样传递。

```json
{
  "providers": {
    "custom": {
      "apiKey": "your-api-key",
      "apiBase": "https://api.your-provider.com/v1"
    }
  },
  "agents": {
    "defaults": {
      "model": "your-model-name"
    }
  }
}
```
> 对于不需要密钥的本地服务器，将 `apiKey` 设置为任何非空字符串 (例如 `"no-key"`)。

</details>

<details>
<summary><b>vLLM (本地 / OpenAI 兼容)</b></summary>

使用 vLLM 或任何 OpenAI 兼容服务器运行您自己的模型，然后添加到配置:

**1. 启动服务器** (示例):
```bash
vllm serve meta-llama/Llama-3.1-8B-Instruct --port 8000
```

**2. 添加到配置** (部分 — 合并到 `~/.nanobot/config.json`):

*提供商 (密钥可以是本地服务器的任何非空字符串):*
```json
{
  "providers": {
    "vllm": {
      "apiKey": "dummy",
      "apiBase": "http://localhost:8000/v1"
    }
  }
}
```

*Model:*
```json
{
  "agents": {
    "defaults": {
      "model": "meta-llama/Llama-3.1-8B-Instruct"
    }
  }
}
```

</details>

<details>
<summary><b>添加新提供商 (开发者指南)</b></summary>

nanobot 使用 **提供商注册表** (`nanobot/providers/registry.py`) 作为单一事实来源。
添加新提供商只需 **2 步** — 无需接触 if-elif 链。

**步骤 1.** 在 `nanobot/providers/registry.py` 中的 `PROVIDERS` 中添加 `ProviderSpec` 条目:

```python
ProviderSpec(
    name="myprovider",                   # 配置字段名称
    keywords=("myprovider", "mymodel"),  # 用于自动匹配的模型名称关键字
    env_key="MYPROVIDER_API_KEY",        # LiteLLM 的环境变量
    display_name="My Provider",          # 在 `nanobot status` 中显示
    litellm_prefix="myprovider",         # 自动前缀: 模型 → myprovider/model
    skip_prefixes=("myprovider/",),      # 不要双重前缀
)
```

**步骤 2.** 在 `nanobot/config/schema.py` 中为 `ProvidersConfig` 添加字段:

```python
class ProvidersConfig(BaseModel):
    ...
    myprovider: ProviderConfig = ProviderConfig()
```

就这样! 环境变量、模型前缀、配置匹配和 `nanobot status` 显示都将自动工作。

**常用 `ProviderSpec` 选项:**

| 字段 | 描述 | 示例 |
|-------|-------------|---------|
| `litellm_prefix` | 为 LiteLLM 自动添加模型名称前缀 | `"dashscope"` → `dashscope/qwen-max` |
| `skip_prefixes` | 如果模型已以此开头，则不添加前缀 | `("dashscope/", "openrouter/")` |
| `env_extras` | 要设置的其他环境变量 | `(("ZHIPUAI_API_KEY", "{api_key}"),)` |
| `model_overrides` | 每个模型的参数覆盖 | `(("kimi-k2.5", {"temperature": 1.0}),)` |
| `is_gateway` | 可以路由任何模型 (如 OpenRouter) | `True` |
| `detect_by_key_prefix` | 通过 API 密钥前缀检测网关 | `"sk-or-"` |
| `detect_by_base_keyword` | 通过 API 基础 URL 检测网关 | `"openrouter"` |
| `strip_model_prefix` | 在重新添加前缀之前删除现有前缀 | `True` (用于 AiHubMix) |

</details>


### MCP (Model Context Protocol)

> [!TIP]
> 配置格式与 Claude Desktop / Cursor 兼容。您可以直接从任何 MCP 服务器的 README 复制 MCP 服务器配置。

nanobot 支持 [MCP](https://modelcontextprotocol.io/) — 连接外部工具服务器并将它们用作原生 agent 工具。

将 MCP 服务器添加到您的 `config.json`:

```json
{
  "tools": {
    "mcpServers": {
      "filesystem": {
        "command": "npx",
        "args": ["-y", "@modelcontextprotocol/server-filesystem", "/path/to/dir"]
      }
    }
  }
}
```

支持两种传输模式:

| 模式 | 配置 | 示例 |
|------|--------|---------|
| **Stdio** | `command` + `args` | 通过 `npx` / `uvx` 的本地进程 |
| **HTTP** | `url` | 远程端点 (`https://mcp.example.com/sse`) |

MCP 工具在启动时自动发现和注册。LLM 可以将它们与内置工具一起使用 — 无需额外配置。




### 安全性

> [!TIP]
> 对于生产部署，在配置中设置 `"restrictToWorkspace": true` 以隔离 agent。

| 选项 | 默认值 | 描述 |
|--------|---------|-------------|
| `tools.restrictToWorkspace` | `false` | 当为 `true` 时，将**所有** agent 工具 (shell、文件读/写/编辑、列表) 限制到工作区目录。防止路径遍历和超出范围的访问。 |
| `channels.*.allowFrom` | `[]` (允许所有) | 用户 ID 白名单。空 = 允许所有人；非空 = 只有列出的用户可以交互。 |


## CLI 参考

| 命令 | 描述 |
|---------|-------------|
| `nanobot onboard` | 初始化配置和工作区 |
| `nanobot agent -m "..."` | 与 agent 聊天 |
| `nanobot agent` | 交互式聊天模式 |
| `nanobot agent --no-markdown` | 显示纯文本回复 |
| `nanobot agent --logs` | 聊天期间显示运行时日志 |
| `nanobot gateway` | 启动网关 |
| `nanobot status` | 显示状态 |
| `nanobot provider login openai-codex` | 提供商的 OAuth 登录 |
| `nanobot channels login` | 链接 WhatsApp (扫描二维码) |
| `nanobot channels status` | 显示渠道状态 |

交互模式退出: `exit`、`quit`、`/exit`、`/quit`、`:q` 或 `Ctrl+D`。

<details>
<summary><b>定时任务 (Cron)</b></summary>

```bash
# 添加任务
nanobot cron add --name "daily" --message "Good morning!" --cron "0 9 * * *"
nanobot cron add --name "hourly" --message "Check status" --every 3600

# 列出任务
nanobot cron list

# 删除任务
nanobot cron remove <job_id>
```

</details>

## 🐳 Docker

> [!TIP]
> `-v ~/.nanobot:/root/.nanobot` 标志将您的本地配置目录挂载到容器中，以便您的配置和工作区在容器重启后保持不变。

### Docker Compose

```bash
docker compose run --rm nanobot-cli onboard   # 首次设置
vim ~/.nanobot/config.json                     # 添加 API 密钥
docker compose up -d nanobot-gateway           # 启动网关
```

```bash
docker compose run --rm nanobot-cli agent -m "Hello!"   # 运行 CLI
docker compose logs -f nanobot-gateway                   # 查看日志
docker compose down                                      # 停止
```

### Docker

```bash
# 构建镜像
docker build -t nanobot .

# 初始化配置 (仅首次)
docker run -v ~/.nanobot:/root/.nanobot --rm nanobot onboard

# 在主机上编辑配置以添加 API 密钥
vim ~/.nanobot/config.json

# 运行网关 (连接到启用的渠道，例如 Telegram/Discord/Mochat)
docker run -v ~/.nanobot:/root/.nanobot -p 18790:18790 nanobot gateway

# 或运行单个命令
docker run -v ~/.nanobot:/root/.nanobot --rm nanobot agent -m "Hello!"
docker run -v ~/.nanobot:/root/.nanobot --rm nanobot status
```

## 📁 项目结构

```
nanobot/
├── agent/          # 🧠 核心 agent 逻辑
│   ├── loop.py     #    Agent 循环 (LLM ↔ 工具执行)
│   ├── context.py  #    提示词构建器
│   ├── memory.py   #    持久化记忆
│   ├── skills.py   #    技能加载器
│   ├── subagent.py #    后台任务执行
│   └── tools/      #    内置工具 (包括 spawn)
├── skills/         # 🎯 捆绑的技能 (github、weather、tmux...)
├── channels/       # 📱 聊天渠道集成
├── bus/            # 🚌 消息路由
├── cron/           # ⏰ 定时任务
├── heartbeat/      # 💓 主动唤醒
├── providers/      # 🤖 LLM 提供商 (OpenRouter 等)
├── session/        # 💬 对话会话
├── config/         # ⚙️ 配置
└── cli/            # 🖥️ 命令
```

## 🤝 贡献与路线图

欢迎 PR! 代码库故意设计得小巧且易读。🤗

**路线图** — 选择一个项目并[打开 PR](https://github.com/HKUDS/nanobot/pulls)!

- [ ] **多模态** — 看见和听见 (图像、语音、视频)
- [ ] **长期记忆** — 永不忘记重要上下文
- [ ] **更好的推理** — 多步规划和反思
- [ ] **更多集成** — 日历等
- [ ] **自我改进** — 从反馈和错误中学习

### 贡献者

<a href="https://github.com/HKUDS/nanobot/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=HKUDS/nanobot&max=100&columns=12&updated=20260210" alt="Contributors" />
</a>


## ⭐ Star 历史

<div align="center">
  <a href="https://star-history.com/#HKUDS/nanobot&Date">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=HKUDS/nanobot&type=Date&theme=dark" />
      <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=HKUDS/nanobot&type=Date" />
      <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=HKUDS/nanobot&type=Date" style="border-radius: 15px; box-shadow: 0 0 30px rgba(0, 217, 255, 0.3);" />
    </picture>
  </a>
</div>

<p align="center">
  <em> 感谢访问 ✨ nanobot!</em><br><br>
  <img src="https://visitor-badge.laobi.icu/badge?page_id=HKUDS.nanobot&style=for-the-badge&color=00d4ff" alt="Views">
</p>


<p align="center">
  <sub>nanobot 仅用于教育、研究和技术交流目的</sub>
</p>
