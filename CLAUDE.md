# Deep Learning Course - Development Guide

## Project Overview

This is a Jupyter Book-based deep learning course. It serves as a **prequel** to the [AI Agents Course](https://github.com/ezponda/ai-agents-course), taking students from neural network fundamentals to computer vision.

**Style Reference:** This course follows the same aesthetic and structure as the AI Agents Course (Jupyter Book, clean Markdown, Colab badges).

---

## Core Architecture: Concepts vs. Labs

This course follows a **decoupled structure** to ensure long-term maintainability and clear separation of concerns.

### The Philosophy

| Notebook Type | Purpose | Focus | Framework |
|---------------|---------|-------|-----------|
| **Concepts** | Theory & Intuition | *What* and *Why* | Framework-agnostic |
| **Labs** | Hands-on Practice | *How* | Keras 3 |
| **Exercises** | Self-Assessment | *Apply* | Keras 3 |

### Concept Notebooks (`*_concepts_*.ipynb`)

**Purpose:** Explain the theory with visualizations and intuition. Students should understand *what* a technique does and *why* it works before touching code.

**Rules:**
- Use **only** Markdown, NumPy, Matplotlib, SciPy
- **NO** Keras, TensorFlow, or PyTorch imports
- Prefer ASCII diagrams and markdown tables over complex code
- Only use Python for generating visualizations (plots of activation functions, training curves, kernel effects)
- Do NOT implement algorithms "from scratch" with NumPy — this confuses students
- Keep it high-level and visual

**Example content:**
```python
# GOOD: Visualization of sigmoid function
z = np.linspace(-5, 5, 100)
plt.plot(z, 1 / (1 + np.exp(-z)))

# BAD: From-scratch neural network
def forward(X, W1, b1, W2, b2):  # Don't do this
    ...
```

### Lab Notebooks (`*_lab_*.ipynb`)

**Purpose:** Hands-on tutorials where students build and train models. The focus is on *how* to use the framework.

**Rules:**
- Use **Keras 3** syntax (framework-agnostic backend)
- Preserve the original teaching flow from legacy notebooks
- Start with Colab badge + H1 title
- Include practical exercises with `...` placeholders
- Link back to concept notebooks with "Recall" callouts

**Example header:**
```markdown
<a target="_blank" href="https://colab.research.google.com/github/ezponda/deep-learning-course/blob/main/book/PATH">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>

# Lab: Your First Neural Network

> **Recall:** See [01_concepts_neural_networks](01_concepts_neural_networks.ipynb) for the theory behind neurons and activation functions.
```

### Exercise Notebooks (`*_exercise_*.ipynb`)

**Purpose:** Self-paced challenges for students to test their understanding.

**Rules:**
- Clear objectives at the top
- Skeleton code with `...` placeholders
- Hints in markdown cells
- Solutions can be in a separate branch or collapsed cells

---

## Project Structure

```
deep-learning-course/
├── book/                        # 📚 PRODUCTION - published content
│   ├── _config.yml              # Jupyter Book configuration
│   ├── _toc.yml                 # Table of contents (defines order)
│   ├── 00_introduction.md       # Course landing page
│   │
│   ├── fundamentals/            # Part 1: Neural Network Basics
│   │   ├── 01_concepts_neural_networks.ipynb
│   │   ├── 02_concepts_training.ipynb
│   │   ├── 03_lab_first_neural_network.ipynb
│   │   ├── 04_lab_regularization.ipynb
│   │   └── 05_exercise_imdb_sentiment.ipynb
│   │
│   ├── computer_vision/         # Part 2: Computer Vision
│   │   ├── 06_lab_image_basics_pillow.ipynb
│   │   ├── 07_lab_image_processing_opencv.ipynb
│   │   ├── 08_concepts_convolution.ipynb
│   │   ├── 09_lab_convolutional_networks.ipynb
│   │   ├── 10_lab_cnn_visualization.ipynb
│   │   ├── 11_lab_object_detection_yolo.ipynb
│   │   ├── 12_lab_object_tracking.ipynb
│   │   └── 13_exercise_cats_vs_dogs.ipynb
│   │
│   └── appendix/                # Reference material
│       ├── A1_keras_api_reference.ipynb
│       └── A2_hyperparameter_tuning.ipynb
│
├── extras/                      # 📦 STAGING - NOT published (drafts, archive, resources)
│
├── .github/workflows/           # GitHub Actions for deployment
├── Makefile                     # Build commands
├── requirements.txt             # Python dependencies
├── CLAUDE.md                    # This file (AI instructions)
└── README.md                    # Student-facing documentation
```

### Production vs Staging

| Folder | Purpose | Published? |
|--------|---------|------------|
| `book/` | Official course content | ✅ Yes |
| `extras/` | Drafts, archive, resources | ❌ No |

**Rule:** Only content in `book/` appears in the published Jupyter Book. Use `extras/` for everything else.

### Ordering Convention

- **Fundamentals:** Concepts (01-02) → Labs (03-04) → Exercise (05)
- **Computer Vision:** Tools (06-07) → Concepts (08) → Labs (09-12) → Exercise (13)

---

## Preferred Libraries

| Purpose | Library | Notes |
|---------|---------|-------|
| Deep Learning | **Keras 3** | Primary framework, backend-agnostic |
| Tensor Operations | TensorFlow | Keras backend |
| Visualizations | Matplotlib | All plots |
| Image Processing | Pillow, OpenCV | Computer vision labs |
| Object Detection | Ultralytics (YOLO) | Modern, easy API |
| Scientific Computing | NumPy, SciPy | Concept notebooks only |

**Future-proofing:** The course may add PyTorch examples later, but Keras 3 is the primary framework.

---

## Build Commands

```bash
make build    # Build the Jupyter Book
make clean    # Remove _build directory
make serve    # Build and open in browser
```

Or directly:

```bash
jupyter-book build book
open book/_build/html/index.html
```

---

## Style Guidelines

### Notebooks

- Start labs with Colab badge + H1 title (single cell)
- Use `---` horizontal rules between major sections
- Prefer ASCII diagrams over complex images when possible
- Keep code cells focused — one concept per cell
- Include output when it's instructive
- Test all code in Google Colab before committing

### Markdown

- Use tables for comparisons
- Use code blocks with language hints (```python)
- Use **bold** for key terms on first mention
- Use `inline code` for function names, parameters
- Use LaTeX for math: `$inline$` and `$$block$$`

### Colab Badge Format

All notebooks should start with:

```markdown
<a target="_blank" href="https://colab.research.google.com/github/ezponda/deep-learning-course/blob/main/book/PATH_TO_NOTEBOOK">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>

# Title of the Notebook
```

---

## Configuration Files

### `_config.yml`

Key settings:
- `execute_notebooks: "off"` — Don't execute during build
- `dollarmath` and `amsmath` extensions — Enable LaTeX math rendering
- Repository URL for "View on GitHub" button

### `_toc.yml`

Defines the sidebar navigation. Update this when adding/removing/reordering notebooks.

---

## Legacy Source

The lab notebooks were migrated from: `/Users/albertoezpondaburu/Documents/git/intro_deep_learning`

When migrating more content:
1. Copy the notebook
2. Update the Colab badge URL
3. Add proper H1 title
4. Verify code runs in Colab
5. Add to `_toc.yml`

---

## Common Tasks

### Adding a New Notebook

1. Create the notebook in the appropriate folder
2. Add Colab badge + H1 title as first cell
3. Add entry to `book/_toc.yml`
4. Run `make build` to verify
5. Test in Google Colab

### Updating Colab Badges

Badge URL pattern:
```
https://colab.research.google.com/github/ezponda/deep-learning-course/blob/main/book/{folder}/{filename}.ipynb
```

### Fixing Math Rendering

Ensure `_config.yml` has:
```yaml
parse:
  myst_enable_extensions:
    - dollarmath
    - amsmath
```

### Working with Drafts

1. Create new notebooks in `extras/`
2. Develop and test without affecting the published book
3. When ready, move to `book/` and add to `_toc.yml`

### Archiving Deprecated Content

When removing a notebook from the course:
1. Move it to `extras/`
2. Remove from `_toc.yml`
