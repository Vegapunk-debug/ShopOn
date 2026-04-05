# ShopOn: Professional E-Commerce Foundations

This project serves as a robust foundation for an e-commerce platform, demonstrating best practices in full-stack development, automated testing, and CI/CD orchestration.

---

## 🏛️ Project Architecture

### **Frontend**
- **Framework**: [React](https://reactjs.org/) (Powered by [Vite](https://vitejs.dev/))
- **Styling**: Vanilla CSS for maximum performance and design flexibility.
- **State Management**: Functional components utilizing React Hooks.

### **Backend**
- **Runtime**: [Node.js](https://nodejs.org/) with [Express.js](https://expressjs.com/) for API routing.
- **ORM**: [Prisma](https://www.prisma.io/) for type-safe database interactions and migrations.
- **Database**: [SQLite3](https://sqlite.org/) for development simplicity.

### **Infrastructure & DevOps**
- **Containerization**: [Docker](https://www.docker.com/) for environment parity.
- **CI/CD**: [GitHub Actions](https://github.com/features/actions) for automated linting and testing.
- **Dependency Management**: [Dependabot](https://github.com/dependabot) for security tracking.

---

## ⚙️ Automated Workflow

1. **Local Development**: Use the idempotent `run.sh` script to build and launch the environment.
2. **CI Validation**: Every `push` and `pull_request` triggers the **GitHub Actions Pipeline**.
   - Installs dependencies.
   - Generates Prisma Client.
   - Strict Linting (ESLint/Prettier).
   - Execution of Jest and Cypress testing suites.

---

## 🎨 Design Decisions & Challenges

- **Prisma & SQLite**: Chosen for rapid iteration while maintaining strong data integrity.
- **Vanilla CSS**: Prioritized to demonstrate deep knowledge of CSS layout principles.
- **Strict CI**: Initial pipeline was informational but transitioned to **Strict Mode** to ensure zero regression in code quality.

---

## 🚀 Getting Started

Run the idempotent setup script to build the images and launch the containers:
```bash
bash run.sh
```
