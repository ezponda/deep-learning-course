# Deep Learning Course

[![Keras](https://img.shields.io/badge/Keras-3.x-D00000?logo=keras&logoColor=white)](https://keras.io/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.x-FF6F00?logo=tensorflow&logoColor=white)](https://www.tensorflow.org/)
[![Python](https://img.shields.io/badge/Python-3.10+-3776AB?logo=python&logoColor=white)](https://python.org/)
[![Jupyter Book](https://img.shields.io/badge/Jupyter%20Book-📖-orange)](https://jupyterbook.org/)

## 📚 View the Course

**[https://ezponda.github.io/deep-learning-course/](https://ezponda.github.io/deep-learning-course/)**

A practical introduction to Deep Learning, from neural network fundamentals to computer vision applications. This course is designed as a **foundation/prequel** to the [AI Agents Course](https://github.com/ezponda/ai-agents-course).

---

## 🎯 How to Take This Course

This course follows a **Concepts → Labs** methodology:

### 1. Read the Concept Notebook First

**Concept notebooks** explain the *what* and *why* — the theory and intuition behind each technique. They use visualizations and diagrams to build understanding without framework code.

- Understand the math and intuition
- Study the visualizations
- No need to run code — just read

### 2. Then Execute the Lab Notebook

**Lab notebooks** teach the *how* — hands-on tutorials where you build and train models using Keras. Click the "Open in Colab" badge to run the code.

- Follow along and execute each cell
- Complete the exercises (marked with `...`)
- Experiment with the parameters

### 3. Test Yourself with Exercises

**Exercise notebooks** are self-assessment challenges. Try to complete them before looking at solutions.

---

## 📖 Course Structure

### Part 1: Neural Network Fundamentals

| # | Type | Topic | Description |
|---|------|-------|-------------|
| 1 | Concepts | Neural Networks | Neurons, activations, loss functions, gradient descent |
| 2 | Concepts | Training | Overfitting, regularization, hyperparameters |
| 3 | Lab | First Neural Network | Build and train your first model in Keras |
| 4 | Lab | Regularization | Apply dropout, early stopping, batch normalization |
| 5 | Exercise | IMDB Sentiment | Binary classification on movie reviews |

### Part 2: Computer Vision

| # | Type | Topic | Description |
|---|------|-------|-------------|
| 6 | Lab | Image Basics (Pillow) | Load, transform, and manipulate images |
| 7 | Lab | Image Processing (OpenCV) | Filtering, thresholding, transformations |
| 8 | Concepts | Convolution & CNNs | Kernels, feature maps, pooling, architectures |
| 9 | Lab | CNNs | Build convolutional networks for image classification |
| 10 | Lab | CNN Visualization | Understand what CNNs learn |
| 11 | Lab | Object Detection (YOLO) | Real-time detection with Ultralytics |
| 12 | Lab | Object Tracking | Track objects across video frames |
| 13 | Exercise | Cats vs Dogs | Image classification challenge |

### Appendix

| Topic | Description |
|-------|-------------|
| Keras API Reference | Common patterns and syntax |
| Hyperparameter Tuning | Keras Tuner for automated search |

---

## 🚀 Run the Notebooks

### Option 1: Google Colab (Recommended)

Click the **"Open in Colab"** badge at the top of each notebook. No setup required — just run!

### Option 2: Local Setup

```bash
# Clone the repository
git clone https://github.com/ezponda/deep-learning-course.git
cd deep-learning-course

# Create virtual environment
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Start Jupyter
jupyter notebook book/
```

---

## 🏗️ Build the Book Locally

```bash
# Install dependencies
pip install -r requirements.txt

# Build the book
make build

# Build and open in browser
make serve
```

The HTML output will be in `book/_build/html/`.

---

## 📁 Repository Structure

```
deep-learning-course/
├── book/                            # 📚 Published course content
│   ├── _config.yml
│   ├── _toc.yml
│   ├── 00_introduction.md
│   ├── fundamentals/                # Part 1
│   ├── computer_vision/             # Part 2
│   └── appendix/
│
├── extras/                          # 📦 Drafts & reference (not published)
│
├── .github/workflows/               # CI/CD
├── Makefile
├── requirements.txt
├── CLAUDE.md                        # Development guide
└── README.md
```

> **Note for contributors:** Only content in `book/` is published. Use `extras/` for drafts and experimental work.

---

## ✅ Prerequisites

- **Python 3.10+**
- Basic Python programming knowledge
- No prior deep learning experience required

---

## 🔗 Resources

- [Keras Documentation](https://keras.io/guides/)
- [TensorFlow Documentation](https://www.tensorflow.org/guide)
- [Jupyter Book Documentation](https://jupyterbook.org/)

---

## ➡️ What's Next?

After completing this course, you'll be ready for the **[AI Agents Course](https://github.com/ezponda/ai-agents-course)**, where you'll learn to build intelligent systems that use LLMs to reason, plan, and act.

---

## 📄 License

[MIT](LICENSE)

---

## 👤 Author

**Alberto Ezpondaburu**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?logo=linkedin)](https://www.linkedin.com/in/alberto-ezpondaburu-merino-305394ab/)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?logo=github)](https://github.com/ezponda)
