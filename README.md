# Travel Skills

<div align="center">

![Travel Skills](https://img.shields.io/badge/Travel-Skills-blue)
![Version](https://img.shields.io/badge/version-1.0.0-green)
![License](https://img.shields.io/badge/license-MIT-orange)

**CodeFlicker Skills for Travel Planning and Management**

[English](#english) | [中文](#中文)

</div>

---

## 中文

### 项目简介

Travel Skills 是一个专门为 CodeFlicker AI 助手设计的旅游规划技能集合。这个仓库包含了一系列系统化的旅游规划工具,帮助用户制定完整、详细的旅行计划。

### 包含的 Skills

#### 1. Travel Planner

**描述**: 系统化的旅游计划制定工具,提供目的地研究、行程规划、预算管理等全方位指导。

**触发场景**:
- "帮我制定旅行计划"
- "创建一个行程安排"
- "研究旅行目的地"
- "规划旅游预算"
- "安排旅行活动"

**核心功能**:
- 🗺️ 目的地研究和分析
- 📅 行程规划和时间安排
- 💰 预算制定和费用追踪
- 🏨 住宿和交通预订建议
- 🎯 景点和活动推荐
- 📋 旅行文档准备清单
- 🆘 紧急情况处理建议

### 快速开始

#### 前置要求

- CodeFlicker AI 助手已安装
- Git 客户端

#### 安装方法

**方法 1: 克隆到个人 Skills 目录**

```bash
# 克隆仓库
cd ~/.codeflicker/skills
git clone https://github.com/Suzy-mo/travel-skills.git
```

**方法 2: 克隆到项目 Skills 目录**

```bash
# 在项目根目录下克隆
cd your-project/.codeflicker/skills
git clone https://github.com/Suzy-mo/travel-skills.git
```

**方法 3: 使用 CodeFlicker 导入**

在 CodeFlicker 中使用以下命令:

```
帮我从 https://github.com/Suzy-mo/travel-skills.git 导入 travel-planner skill
```

#### 使用示例

安装完成后,你可以通过以下方式使用:

```
我想去北京旅游3天,帮我制定一个详细的旅行计划
```

或者:

```
帮我研究一下日本京都的最佳旅游时间和必游景点
```

### 目录结构

```
travel-skills/
├── README.md                          # 仓库说明文档
└── travel-planner/                    # Travel Planner Skill
    ├── SKILL.md                       # 主文件(包含核心指导)
    ├── references/                    # 参考文档
    │   ├── destination-research.md    # 目的地研究指南
    │   ├── itinerary-template.md      # 行程规划模板
    │   └── budget-planning.md         # 预算规划指南
    ├── examples/                      # 使用示例
    │   └── example-itinerary.md       # 完整旅行计划示例
    └── scripts/                       # 工具脚本
        └── validate-itinerary.sh      # 行程验证脚本
```

### 功能特性

#### 📊 系统化研究方法

提供完整的目的地研究框架,包括:
- 基本信息收集(气候、文化、安全)
- 旅游资源调研(景点、美食、购物)
- 实用信息整理(交通、住宿、通讯)

#### 📅 详细行程规划

提供可复用的行程模板:
- 每日时间安排表
- 景点优先级分类
- 交通路线优化
- 备选方案准备

#### 💰 精确预算管理

提供全面的预算规划工具:
- 费用分类明细
- 预算分配建议
- 费用追踪方法
- 省钱技巧分享

#### ✅ 验证工具

包含自动验证脚本:
- Skill 结构验证
- 必需文件检查
- 格式正确性验证

### 使用场景

#### 1. 目的地选择

当你还在犹豫去哪里旅行时:
```
我想在5月份出游,预算5000元,推荐一些适合的目的地
```

#### 2. 行程制定

确定目的地后:
```
我要去成都玩4天,预算3000元,帮我制定详细的行程计划
```

#### 3. 预算规划

需要控制旅行成本时:
```
我要去欧洲旅行10天,总预算1万元,帮我规划如何分配预算
```

#### 4. 紧急情况处理

旅行中遇到问题:
```
我在泰国护照丢失了,应该怎么处理?
```

### 贡献指南

我们欢迎所有形式的贡献!

#### 如何贡献

1. Fork 本仓库
2. 创建你的特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交你的更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 创建一个 Pull Request

#### 贡献类型

- 🐛 报告 Bug
- 💡 提出新功能建议
- 📝 改进文档
- 🔧 提交代码改进
- 🌍 添加多语言支持

#### 代码规范

- 遵循 CodeFlicker Skill 标准
- 保持 SKILL.md 简洁(1500-2000字)
- 详细内容放在 references/ 目录
- 提供清晰的示例代码
- 添加必要的注释

### 开发路线

- [x] Travel Planner Skill 核心功能
- [x] 详细参考文档
- [x] 使用示例
- [ ] 多语言支持(英文版)
- [ ] 更多目的地特定 Skills
- [ ] 与在线旅行平台集成
- [ ] 实时天气和汇率信息

### 常见问题

#### Q: Skill 安装后不生效?

A: Skill 安装后需要间隔 30 秒才能生效,或者重启 VS Code 立即生效。

#### Q: 如何验证 Skill 是否正确安装?

A: 运行验证脚本:
```bash
cd travel-skills/travel-planner
./scripts/validate-itinerary.sh
```

#### Q: 可以同时使用多个 Skills 吗?

A: 可以,CodeFlicker 支持同时加载多个 Skills。只需将它们放在同一个 skills 目录下即可。

#### Q: 如何更新 Skill?

A: 进入 skill 目录,执行 `git pull` 即可获取最新版本。

### 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

### 致谢

感谢所有贡献者的付出!

如果这个项目对你有帮助,请给一个 ⭐️ Star!

---

## English

### Introduction

Travel Skills is a collection of travel planning skills designed for CodeFlicker AI assistant. This repository contains systematic travel planning tools to help users create comprehensive and detailed travel plans.

### Included Skills

#### 1. Travel Planner

**Description**: Systematic travel planning tool providing comprehensive guidance on destination research, itinerary planning, and budget management.

**Trigger Scenarios**:
- "Help me plan a trip"
- "Create a travel itinerary"
- "Research travel destinations"
- "Plan travel budget"
- "Organize travel activities"

**Core Features**:
- 🗺️ Destination research and analysis
- 📅 Itinerary planning and scheduling
- 💰 Budget planning and expense tracking
- 🏨 Accommodation and transportation booking advice
- 🎯 Attraction and activity recommendations
- 📋 Travel document preparation checklist
- 🆘 Emergency handling suggestions

### Quick Start

#### Prerequisites

- CodeFlicker AI assistant installed
- Git client

#### Installation

**Method 1: Clone to Personal Skills Directory**

```bash
cd ~/.codeflicker/skills
git clone https://github.com/Suzy-mo/travel-skills.git
```

**Method 2: Clone to Project Skills Directory**

```bash
cd your-project/.codeflicker/skills
git clone https://github.com/Suzy-mo/travel-skills.git
```

#### Usage Example

After installation, you can use it like this:

```
I want to travel to Beijing for 3 days, help me create a detailed travel plan
```

Or:

```
Help me research the best time to visit Kyoto, Japan and must-see attractions
```

### Contributing

We welcome all forms of contributions!

#### How to Contribute

1. Fork this repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Create a Pull Request

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

### Acknowledgments

Thanks to all contributors!

If this project helps you, please give it a ⭐️ Star!

---

<div align="center">

**Made with ❤️ by Suzy-mo**

[GitHub](https://github.com/Suzy-mo/travel-skills) | [Report Bug](https://github.com/Suzy-mo/travel-skills/issues) | [Request Feature](https://github.com/Suzy-mo/travel-skills/issues)

</div>
