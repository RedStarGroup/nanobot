# 可用工具

本文档描述了 nanobot 可用的工具。

## 文件操作

### read_file
读取文件内容。
```
read_file(path: str) -> str
```

### write_file
将内容写入文件 (如果需要则创建父目录)。
```
write_file(path: str, content: str) -> str
```

### edit_file
通过替换特定文本来编辑文件。
```
edit_file(path: str, old_text: str, new_text: str) -> str
```

### list_dir
列出目录内容。
```
list_dir(path: str) -> str
```

## Shell 执行

### exec
执行 shell 命令并返回输出。
```
exec(command: str, working_dir: str = None) -> str
```

**安全注意事项:**
- 命令具有可配置的超时时间 (默认 60 秒)
- 危险命令被阻止 (rm -rf、format、dd、shutdown 等)
- 输出在 10,000 个字符处截断
- 可选的 `restrictToWorkspace` 配置以限制路径

## Web 访问

### web_search
使用 Brave Search API 搜索网络。
```
web_search(query: str, count: int = 5) -> str
```

返回带有标题、URL 和摘要的搜索结果。需要在配置中设置 `tools.web.search.apiKey`。

### web_fetch
从 URL 获取并提取主要内容。
```
web_fetch(url: str, extractMode: str = "markdown", maxChars: int = 50000) -> str
```

**注意事项:**
- 内容使用 readability 提取
- 支持 markdown 或纯文本提取
- 输出默认在 50,000 个字符处截断

## 沟通

### message
向用户发送消息 (内部使用)。
```
message(content: str, channel: str = None, chat_id: str = None) -> str
```

## 后台任务

### spawn
生成一个子 agent 在后台处理任务。
```
spawn(task: str, label: str = None) -> str
```

用于可以独立运行的复杂或耗时任务。子 agent 将完成任务并在完成时报告。

## 定时提醒 (Cron)

使用 `exec` 工具通过 `nanobot cron add` 创建定时提醒:

### 设置周期性提醒
```bash
# 每天上午 9 点
nanobot cron add --name "morning" --message "早上好! ☀️" --cron "0 9 * * *"

# 每 2 小时
nanobot cron add --name "water" --message "喝水! 💧" --every 7200
```

### 设置一次性提醒
```bash
# 在特定时间 (ISO 格式)
nanobot cron add --name "meeting" --message "会议现在开始!" --at "2025-01-31T15:00:00"
```

### 管理提醒
```bash
nanobot cron list              # 列出所有作业
nanobot cron remove <job_id>   # 删除作业
```

## 心跳任务管理

工作区中的 `HEARTBEAT.md` 文件每 30 分钟检查一次。
使用文件操作来管理周期性任务:

### 添加心跳任务
```python
# 追加新任务
edit_file(
    path="HEARTBEAT.md",
    old_text="## Example Tasks",
    new_text="- [ ] 新的周期性任务\n\n## Example Tasks"
)
```

### 删除心跳任务
```python
# 删除特定任务
edit_file(
    path="HEARTBEAT.md",
    old_text="- [ ] 要删除的任务\n",
    new_text=""
)
```

### 重写所有任务
```python
# 替换整个文件
write_file(
    path="HEARTBEAT.md",
    content="# 心跳任务\n\n- [ ] 任务 1\n- [ ] 任务 2\n"
)
```

---

## 添加自定义工具

要添加自定义工具:
1. 在 `nanobot/agent/tools/` 中创建一个继承 `Tool` 的类
2. 实现 `name`、`description`、`parameters` 和 `execute`
3. 在 `AgentLoop._register_default_tools()` 中注册
