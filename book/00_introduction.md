# Deep Learning Course

From neurons to convolutional networks — a practical foundation for modern AI.

This course teaches you to build and train neural networks using Keras and TensorFlow. By the end, you'll understand how deep learning works and be ready to tackle advanced topics like transformers and AI agents.

---

## Why Deep Learning?

**The context:** Modern AI systems — from ChatGPT to self-driving cars — are built on deep learning. Understanding these foundations unlocks everything that comes after.

**What you'll learn:**
- How neural networks learn from data
- Why certain architectures work for certain problems
- Practical skills: training, debugging, improving models

**The approach:** Theory and practice are separated but connected:
- **Concept notebooks** explain the *what* and *why* (framework-agnostic)
- **Lab notebooks** show the *how* (hands-on Keras code)

---

## Learning Path

```
START HERE
    │
    ▼
┌─────────────────────────────────────────────────────────────────┐
│                 PART 1: FUNDAMENTALS                            │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Concepts                          Labs                         │
│  ────────                          ────                         │
│  ① Neural Networks  ─────────────▶ ③ First Neural Network      │
│  ② Training & Regularization ────▶ ④ Regularization Lab        │
│  ②b Optimizers (NEW!)              ⑤ Exercise: IMDB Sentiment  │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
    │
    ▼
┌─────────────────────────────────────────────────────────────────┐
│                 PART 2: COMPUTER VISION                         │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Tools                             Deep Learning                │
│  ─────                             ─────────────                │
│  ⑥ Image Basics (Pillow)           ⑧ Concepts: Convolution     │
│  ⑦ Image Processing (OpenCV)  ───▶ ⑨ CNN Lab                   │
│                                    ⑩ CNN Visualization         │
│                                    ⑪ Object Detection (YOLO)   │
│                                    ⑫ Object Tracking           │
│                                    ⑬ Exercise: Cats vs Dogs    │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
    │
    ▼
┌─────────────────────────────────────────────────────────────────┐
│                      APPENDIX (Reference)                       │
├─────────────────────────────────────────────────────────────────┤
│  A1. Keras API Reference                                        │
│  A2. Hyperparameter Tuning                                      │
│  A3. Model Evaluation & Debugging (NEW!)                        │
└─────────────────────────────────────────────────────────────────┘
```

---

## What You'll Build

```
PART 1: NEURAL NETWORK FUNDAMENTALS
════════════════════════════════════

  ┌─────────────┐      ┌─────────────┐      ┌─────────────┐
  │   Input     │ ──▶  │   Hidden    │ ──▶  │   Output    │
  │   Layer     │      │   Layers    │      │   Layer     │
  └─────────────┘      └─────────────┘      └─────────────┘
        x                   σ(Wx+b)               ŷ

  You'll understand: neurons, activations, loss, backpropagation, optimizers


PART 2: COMPUTER VISION
════════════════════════════════════

  ┌──────────────────────────────────────────────────────────┐
  │                                                          │
  │    Image ──▶ [Conv] ──▶ [Pool] ──▶ [Conv] ──▶ [Dense]   │
  │                                                          │
  │    Feature extraction          Classification            │
  │                                                          │
  └──────────────────────────────────────────────────────────┘

  You'll build: image classifiers, use pretrained models, detect objects
```

---

## Course Structure

### Part 1: Neural Network Fundamentals

| Chapter | Type | What you'll learn |
|---------|------|-------------------|
| Concepts: Neural Networks | Theory | Neurons, activations, loss functions |
| Concepts: Training | Theory | Overfitting, regularization, hyperparameters |
| **Concepts: Optimizers** | Theory | Adam, SGD, learning rate schedules |
| Lab: First Neural Network | Practice | Build and train your first model |
| Lab: Regularization | Practice | Dropout, early stopping, batch norm |
| Exercise: IMDB Sentiment | Challenge | Binary text classification |

### Part 2: Computer Vision

| Chapter | Type | What you'll learn |
|---------|------|-------------------|
| Lab: Image Basics (Pillow) | Practice | Load and transform images |
| Lab: Image Processing (OpenCV) | Practice | Filtering, thresholding, histograms |
| Concepts: Convolution | Theory | Kernels, feature maps, pooling |
| Lab: CNNs | Practice | Build convolutional networks |
| Lab: CNN Visualization | Practice | Understand what CNNs see |
| Lab: Object Detection | Practice | YOLO with Ultralytics |
| Lab: Object Tracking | Practice | Track objects across video frames |
| Exercise: Cats vs Dogs | Challenge | Image classification |

### Appendix (Reference)

| Chapter | Content |
|---------|---------|
| Keras API Reference | Layers, activations, losses, metrics |
| Hyperparameter Tuning | Keras Tuner, search strategies |
| **Model Evaluation & Debugging** | Confusion matrices, precision/recall, troubleshooting |

---

## Prerequisites

- **Python:** Basic programming (variables, functions, loops)
- **Math:** High school algebra (no calculus required — we'll explain the intuition)
- **Environment:** Google Colab (free) or local Python setup

**No prior deep learning experience required.**

---

## How to Use This Course

1. **Read the Concept notebooks first** — understand the theory
2. **Run the Lab notebooks in Colab** — get hands-on practice
3. **Try the Exercises** — test your understanding
4. **Use the Appendix** — quick reference for APIs and debugging

Each notebook has a **"Open in Colab"** badge. Click it to run the code without any local setup.

```{tip}
When you're stuck, check the **Model Evaluation & Debugging** appendix for common problems and solutions.
```

---

## What's Next?

After this course, you'll be ready for:

- **[AI Agents Course](https://github.com/ezponda/ai-agents-course)** — Build intelligent systems with LLMs
- **Transformers & NLP** — The architecture behind modern language models
- **Advanced Computer Vision** — Segmentation, GANs, diffusion models

---

## Let's Start

Proceed to **Concepts: Neural Networks** to understand how neural networks learn.
