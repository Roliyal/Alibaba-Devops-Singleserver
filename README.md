#  Devops Easy deployment

<h1 align="center">
    <img src="https://user-images.githubusercontent.com/96233798/184319134-758d65b2-0e0b-4127-aab5-06c1adf9c15e.png" width="1000" alt="ack_githubaction">
</h1>
<p align="center">
    如何快速在阿里云 ACK 使用 Github Action 进行持续集成与发布（Singler）
</p>

目前，阿里云与 GitHub 联合发布了快速部署至阿里云 ACK 的 GitHub Action Workflow。无需再自建部署维护 CI/CD 工具，基于开箱即用的 GitHub Action 及阿里云部署模板，即可实现 GitHub 代码变更后，自动应用打包构建上传阿里云容器镜像服务 ACR、快速部署至阿里云容器服务 ACK 的流程。本文将从 GitHub Action、阿里云容器服务及实践 Demo 来为您详细介绍。

欢迎访问我的网站 [roliyal.com](https://roliyal.com) 了解更多信息。


## 快速开始

我们提供了一个基于 



### 本地安装

使用 `pip` 安装 GraphScope。

```bash
pip3 install graphscope
```

注


## 示例







### 图分析


### 关闭会话


## 开发

### 在本地构建


# 编译所有组件，包括 Python 包和 引擎可执行文件
make graphscope

# 或者只编译指定的引擎
# make gie
# make gae
# make gle
```

### 构建 Docker 镜像

GraphScope 包含一个 [Dockerfile](k8s/graphscope.Dockerfile)，可以构建 Docker 映像。 这些映像会在单独的构建镜像上构建，完成后再复制生成的二进制文件到运行时基础镜像，进行分发。构建镜像和运行时基础镜像都预装了所有所需的第三方依赖和环境。要构建最新的 GraphScope 镜像，在根目录运行此命令。

```bash
# 默认情况下，产出的镜像 tag 为 graphscope/graphscope:SHORTSHA
make graphscope-image
```

### 构建客户端 Python 包

GraphScope Python 包与 GraphScope docker 镜像是独立构建的。
如果您正在开发 Python 客户端且未修改 protobuf 文件，则 GraphScope docker 镜像不需要重新构建。您只需要在本地重新安装 Python 客户端。

```bash
make client
```

请注意，图学习引擎的客户端具有 C/C++ 扩展模块，并需要额外的构建环境。
默认情况下，本地构建的客户端库不包含对图学习引擎的支持。如果需要构建包含图学习引擎的 Python 包，请参阅 [构建 Python Wheels](https://graphscope.io/docs/developer_guide.html#build-python-wheels).

### 测试

为了验证您所开发功能的正确性，您所做的代码更改应通过我们的测试。通过以下脚本执行测试流程。

```bash
make test
```



## 文档
[GitHub Action + ACK：云原生 DevOps 落地利器
](https://developer.aliyun.com/article/782743）
## 贡献

热忱欢迎和感谢各位开源爱好者的各种贡献！
- 通过 GitHub issue 报告 bug 或者提出功能需求；
- 通过 Pull requests 提交代码修改。
