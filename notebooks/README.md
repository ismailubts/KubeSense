# 📚 KubeSense Notebooks

Interactive Jupyter notebooks that provide comprehensive exploration, analysis, and guidance for the KubeSense MLOps sentiment analysis project.

## 🎯 Notebook Overview

### Tutorials

| Notebook | Description | Key Topics | Difficulty |
|----------|-------------|------------|------------|
| **[tutorials/01_getting_started.ipynb](tutorials/01_getting_started.ipynb)** | Introduction and basic usage | API basics, sentiment analysis, health checks | 🟢 Beginner |
| **[tutorials/06_development_workflow.ipynb](tutorials/06_development_workflow.ipynb)** | Development and testing workflows | CI/CD, code quality, debugging, best practices | 🟠 Advanced |

### Experiments

| Notebook | Description | Key Topics | Difficulty |
|----------|-------------|------------|------------|
| **[experiments/02_model_exploration.ipynb](experiments/02_model_exploration.ipynb)** | Model analysis and understanding | DistilBERT, tokenization, performance analysis | 🟡 Intermediate |
| **[experiments/experiment_tracking.ipynb](experiments/experiment_tracking.ipynb)** | Integrate with MLflow or Weights & Biases for hyperparameter tuning. | MLflow, Weights & Biases, hyperparameter tuning | 🟠 Advanced |

### Production

| Notebook | Description | Key Topics | Difficulty |
|----------|-------------|------------|------------|
| **[production/03_api_testing.ipynb](production/03_api_testing.ipynb)** | API endpoints testing and integration | Functional testing, load testing, error handling | 🟡 Intermediate |
| **[production/04_benchmarking_analysis.ipynb](production/04_benchmarking_analysis.ipynb)** | Performance benchmarking and cost analysis | Scaling analysis, cost optimization, infrastructure comparison | 🟠 Advanced |
| **[production/05_monitoring_metrics.ipynb](production/05_monitoring_metrics.ipynb)** | Monitoring and metrics analysis | Observability, alerting, data drift detection | 🟠 Advanced |
| **[production/07_deployment_guide.ipynb](production/07_deployment_guide.ipynb)** | Deployment and infrastructure guide | Kubernetes, Helm, scaling, production readiness | 🔴 Expert |
| **[production/mlops_pipeline_overview.ipynb](production/mlops_pipeline_overview.ipynb)** | End-to-end pipeline demo with Kubernetes deployment stubs. | MLOps, Kubernetes, CI/CD | 🔴 Expert |
| **[production/model_retraining_automation.ipynb](production/model_retraining_automation.ipynb)** | Script for monitoring model drift and triggering retrains via GitHub Actions. | MLOps, GitHub Actions, model drift | 🔴 Expert |
| **[production/onnx_optimization_benchmark.ipynb](production/onnx_optimization_benchmark.ipynb)** | Compare ONNX runtime performance across hardware (e.g., CPU vs. GPU in Colab). | ONNX, performance, benchmarking | 🔴 Expert |
| **[production/data_engineering_flow.ipynb](production/data_engineering_flow.ipynb)** | ETL processes for distributed systems, including error recovery and observability. | ETL, data engineering, observability | 🔴 Expert |

## 🚀 Quick Start

### Prerequisites

```bash
# Install Python dependencies
pip install -r notebooks/requirements.txt

# For local API testing (optional)
docker run -d -p 8000:8000 sentiment-service:latest
```

### Launch Notebooks

```bash
# Using Jupyter Lab (recommended)
pip install jupyterlab
jupyter lab notebooks/

# Using classic Jupyter
jupyter notebook notebooks/

# Using VS Code
# Open any .ipynb file and select the Jupyter kernel
```

## 📖 Learning Path

### 🟢 Beginner Path

1. **[tutorials/01_getting_started.ipynb](tutorials/01_getting_started.ipynb)** - Learn the basics
2. **[experiments/02_model_exploration.ipynb](experiments/02_model_exploration.ipynb)** - Understand the model

### 🟡 Intermediate Path

3. **[production/03_api_testing.ipynb](production/03_api_testing.ipynb)** - Test the API
4. **[tutorials/06_development_workflow.ipynb](tutorials/06_development_workflow.ipynb)** - Development practices

### 🟠 Advanced Path

5. **[production/04_benchmarking_analysis.ipynb](production/04_benchmarking_analysis.ipynb)** - Performance analysis
6. **[production/05_monitoring_metrics.ipynb](production/05_monitoring_metrics.ipynb)** - Monitoring & alerting

### 🔴 Expert Path

7. **[production/07_deployment_guide.ipynb](production/07_deployment_guide.ipynb)** - Production deployment

## 🎯 Use Cases

### For Developers

- **API Integration**: Learn how to integrate with KubeSense API
- **Testing Strategies**: Understand comprehensive testing approaches
- **Development Workflow**: Master MLOps development practices
- **Debugging Techniques**: Learn systematic troubleshooting

### For ML Engineers

- **Model Understanding**: Deep dive into DistilBERT and sentiment analysis
- **Performance Optimization**: Analyze and improve model performance
- **Monitoring Setup**: Implement production monitoring
- **Scaling Strategies**: Design scalable ML systems

### For DevOps/SRE

- **Infrastructure as Code**: Terraform and Helm deployments
- **Monitoring & Alerting**: Production observability setup
- **Scaling & High Availability**: Production scaling strategies
- **Security & Compliance**: Production security best practices

### For Product Managers

- **Feature Understanding**: Learn what KubeSense can do
- **Performance Benchmarks**: Understand scalability and costs
- **Production Readiness**: Assess deployment readiness
- **Business Metrics**: Monitor business impact

## 🛠️ Notebook Features

### Interactive Analysis

- **Real-time API Testing**: Test against running services
- **Live Data Visualization**: Interactive charts and graphs
- **Configurable Parameters**: Modify settings and see results
- **Error Simulation**: Test error handling scenarios

### Educational Content

- **Progressive Difficulty**: From basic to advanced concepts
- **Code Examples**: Practical, runnable code samples
- **Best Practices**: Industry-standard MLOps practices
- **Troubleshooting Guides**: Common issues and solutions

### Production Focus

- **Real-world Scenarios**: Based on actual deployment patterns
- **Cost Analysis**: Infrastructure and operational costs
- **Performance Metrics**: Realistic benchmarking data
- **Security Considerations**: Production security practices

## 📊 Data Sources

### Sample Data

- **Synthetic Metrics**: Generated realistic monitoring data
- **Benchmark Results**: Simulated performance test results
- **Cost Analysis**: Based on real cloud pricing
- **Error Patterns**: Common failure scenarios

### Real Integration

- **API Endpoints**: Connect to running KubeSense instances
- **Configuration Files**: Analyze actual project configuration
- **Test Results**: Display real test coverage and results
- **Code Analysis**: Static analysis of actual codebase

## 🔧 Technical Requirements

### Python Packages

```
jupyter>=1.0.0
matplotlib>=3.5.0
seaborn>=0.11.0
pandas>=1.5.0
requests>=2.28.0
httpx>=0.24.0
plotly>=5.0.0
numpy>=1.21.0
scipy>=1.9.0
pyyaml>=6.0
```

### System Requirements

- **Python**: 3.9+
- **Memory**: 2GB+ RAM recommended
- **Storage**: 500MB+ free space
- **Network**: Internet connection for API testing

### Optional Dependencies

- **Docker**: For local API testing
- **kubectl**: For Kubernetes interaction
- **helm**: For Helm chart analysis

## 🎨 Notebook Structure

Each notebook follows a consistent structure:

1. **🎯 Learning Objectives** - What you'll learn
2. **📋 Overview** - Key concepts and architecture
3. **🛠️ Setup** - Dependencies and configuration
4. **📊 Analysis** - Core content and examples
5. **📈 Visualizations** - Charts and data analysis
6. **🚨 Error Handling** - Common issues and solutions
7. **💡 Best Practices** - Recommendations and tips
8. **🔄 Next Steps** - What to explore next

## 🔍 Key Features Demonstrated

### MLOps Best Practices

- **Experiment Tracking**: MLflow integration
- **Model Versioning**: Semantic versioning
- **Data Validation**: Schema validation and quality checks
- **Monitoring**: Comprehensive observability
- **CI/CD**: Automated testing and deployment

### Performance Optimization

- **Model Optimization**: ONNX, quantization, distillation
- **Caching Strategies**: LRU cache, Redis integration
- **Async Processing**: Concurrent request handling
- **Resource Management**: CPU/memory optimization

### Production Readiness

- **Health Checks**: Liveness and readiness probes
- **Auto-scaling**: HPA and cluster autoscaling
- **Security**: Input validation, RBAC, network policies
- **Backup & Recovery**: Disaster recovery planning
- **Cost Optimization**: Resource rightsizing

## 🚨 Troubleshooting

### Common Issues

**Notebook won't load**

```bash
# Install missing dependencies
pip install -r notebooks/requirements.txt

# Clear Jupyter cache
rm -rf ~/.jupyter/
jupyter notebook --generate-config
```

**API connection fails**

```bash
# Check if service is running
docker ps | grep sentiment

# Start service if needed
docker run -d -p 8000:8000 sentiment-service:latest

# Test connectivity
curl http://localhost:8000/health
```

**Memory errors**

```bash
# Increase Jupyter memory limits
jupyter notebook --NotebookApp.max_buffer_size=1000000000

# Or use Jupyter Lab with more memory
jupyter lab --LabApp.max_buffer_size=1000000000
```

**Visualization issues**

```bash
# Reinstall matplotlib/seaborn
pip uninstall matplotlib seaborn -y
pip install matplotlib seaborn plotly

# Use non-interactive backend
import matplotlib
matplotlib.use('Agg')
```

## 📈 Contributing

### Adding New Notebooks

1. Follow the naming convention: `NN_topic_name.ipynb`
2. Include learning objectives and prerequisites
3. Add comprehensive documentation
4. Test on multiple Python versions
5. Update this README

### Improving Existing Notebooks

1. Add more interactive examples
2. Include real data where possible
3. Enhance visualizations
4. Add error handling examples
5. Update dependencies

## 📚 Related Documentation

- **[Main README](../README.md)** - Project overview and setup
- **[API Documentation](../openapi-specs/sentiment-api.yaml)** - OpenAPI specification
- **[Deployment Guide](../docs/setup/deployment-guide.md)** - Production deployment
- **[Benchmarking Guide](../docs/BENCHMARKING.md)** - Performance testing
- **[Monitoring Guide](../docs/MONITORING.md)** - Observability setup

## 🏷️ Tags and Categories

**Topics**: MLOps, Machine Learning, Sentiment Analysis, Kubernetes, Docker, FastAPI
**Technologies**: Python, Jupyter, Pandas, Matplotlib, Prometheus, Grafana
**Difficulty**: Beginner to Expert
**Use Cases**: API Testing, Performance Analysis, Infrastructure Planning, Production Deployment

## 📞 Support

- **Issues**: [GitHub Issues](../../issues)
- **Discussions**: [GitHub Discussions](../../discussions)
- **Documentation**: [Project Wiki](../../wiki)

---

**🎯 Ready to explore KubeSense? Start with [tutorials/01_getting_started.ipynb](tutorials/01_getting_started.ipynb)!**

*Built with ❤️ for the MLOps community*
