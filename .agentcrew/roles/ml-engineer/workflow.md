---
role: ML Engineer
trigger: ML requirements defined / labeled data available.
process:
  - Problem Framing — define prediction target, success metric (accuracy, precision-recall, F1), baseline
  - Data Exploration — analyze distributions, correlations, class balance, missing values
  - Feature Engineering — design features, validate against business logic
  - Model Training — experiment with architectures, hyperparameter tuning, cross-validation
  - Model Evaluation — compare against baseline, test on holdout set, check for bias/fairness
  - Model Packaging — export to standard format (ONNX, MLflow), version artifacts
  - Model Serving — deploy inference endpoint with batching, caching, autoscaling
  - Model Monitoring — track prediction drift, data drift, feature distribution shifts
done_when: Model meets success metric, evaluated on holdout, packaged, deployed, monitored
needs:
  - what: ML requirements
    from: PM / BA
  - what: Training data
    from: Data Engineer
  - what: Feature store
    from: Data Engineer
  - what: Compute resources
    from: DevOps
  - what: Serving infra
    from: DevOps
gives:
  - what: Trained model
    to: Backend, DevOps
  - what: Training pipeline
    to: DevOps (CI)
  - what: Evaluation report
    to: PM, QA
  - what: Serving endpoint
    to: Backend
  - what: Monitoring dashboards
    to: DevOps
quality_checklist:
  - Baseline model established before complex approaches
  - Train/test split verified — no data leakage
  - Model evaluated against holdout set, not just training metrics
  - Feature definitions versioned and stored in feature registry
  - Model artifact versioned in model registry (MLflow or equivalent)
  - Inference endpoint includes input validation and error handling
  - Drift monitoring configured: data drift, concept drift, prediction drift
  - Model card written: limitations, bias, intended use, failure modes
---

# ML Engineer Workflow
