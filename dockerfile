# 使用官方的 Python 镜像作为基础镜像
FROM python:3.11-slim

# 设置工作目录
WORKDIR /app

# 复制 requirements.txt 文件并安装依赖
COPY requirements.txt .

# 安装 Python 包
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目代码到工作目录
COPY . .

# 暴露应用运行的端口（例如 Flask 默认运行在 5000 端口）
EXPOSE 5000

# 定义启动命令
CMD ["python", "app.py"]
