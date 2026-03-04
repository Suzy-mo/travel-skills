#!/bin/bash

# Travel Planner Skill - 行程验证脚本
# 用途: 验证旅行计划的完整性和合理性

set -e

echo "======================================"
echo "  Travel Planner - 行程验证工具"
echo "======================================"
echo ""

# 颜色定义
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 验证函数
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}!${NC} $1"
}

# 计数器
errors=0
warnings=0

# 1. 检查SKILL.md文件
echo "1. 检查SKILL.md文件..."
if [ -f "SKILL.md" ]; then
    print_success "SKILL.md 文件存在"
    
    # 检查YAML frontmatter
    if head -1 SKILL.md | grep -q "^---$"; then
        print_success "YAML frontmatter 格式正确"
    else
        print_error "YAML frontmatter 格式错误"
        ((errors++))
    fi
    
    # 检查必需字段
    if grep -q "^name:" SKILL.md; then
        print_success "包含 name 字段"
    else
        print_error "缺少 name 字段"
        ((errors++))
    fi
    
    if grep -q "^description:" SKILL.md; then
        print_success "包含 description 字段"
    else
        print_error "缺少 description 字段"
        ((errors++))
    fi
    
    if grep -q "^version:" SKILL.md; then
        print_success "包含 version 字段"
    else
        print_warning "缺少 version 字段(建议添加)"
        ((warnings++))
    fi
else
    print_error "SKILL.md 文件不存在"
    ((errors++))
fi

echo ""

# 2. 检查references目录
echo "2. 检查references目录..."
if [ -d "references" ]; then
    print_success "references 目录存在"
    
    # 检查关键参考文档
    required_refs=("destination-research.md" "itinerary-template.md" "budget-planning.md")
    
    for ref in "${required_refs[@]}"; do
        if [ -f "references/$ref" ]; then
            print_success "参考文档存在: $ref"
        else
            print_warning "参考文档缺失: $ref"
            ((warnings++))
        fi
    done
else
    print_warning "references 目录不存在"
    ((warnings++))
fi

echo ""

# 3. 检查examples目录
echo "3. 检查examples目录..."
if [ -d "examples" ]; then
    print_success "examples 目录存在"
    
    # 检查是否有示例文件
    example_count=$(find examples -type f -name "*.md" | wc -l)
    if [ "$example_count" -gt 0 ]; then
        print_success "包含 $example_count 个示例文件"
    else
        print_warning "未找到示例文件"
        ((warnings++))
    fi
else
    print_warning "examples 目录不存在"
    ((warnings++))
fi

echo ""

# 4. 检查scripts目录
echo "4. 检查scripts目录..."
if [ -d "scripts" ]; then
    print_success "scripts 目录存在"
else
    print_warning "scripts 目录不存在"
    ((warnings++))
fi

echo ""

# 5. 验证示例行程(如果存在)
echo "5. 验证示例行程..."
if [ -f "examples/example-itinerary.md" ]; then
    print_success "示例行程文件存在"
    
    # 检查关键内容
    if grep -q "## 旅行概览" examples/example-itinerary.md; then
        print_success "包含旅行概览"
    else
        print_warning "缺少旅行概览"
        ((warnings++))
    fi
    
    if grep -q "## 预算明细" examples/example-itinerary.md; then
        print_success "包含预算明细"
    else
        print_warning "缺少预算明细"
        ((warnings++))
    fi
    
    if grep -q "## 详细行程安排" examples/example-itinerary.md; then
        print_success "包含详细行程安排"
    else
        print_warning "缺少详细行程安排"
        ((warnings++))
    fi
fi

echo ""
echo "======================================"
echo "  验证结果统计"
echo "======================================"
echo -e "${RED}错误数: $errors${NC}"
echo -e "${YELLOW}警告数: $warnings${NC}"
echo ""

if [ "$errors" -eq 0 ]; then
    if [ "$warnings" -eq 0 ]; then
        echo -e "${GREEN}✓ 验证通过!Travel Planner Skill 结构完整。${NC}"
        exit 0
    else
        echo -e "${YELLOW}⚠ 验证通过,但存在 $warnings 个警告。${NC}"
        exit 0
    fi
else
    echo -e "${RED}✗ 验证失败!发现 $errors 个错误。${NC}"
    exit 1
fi
