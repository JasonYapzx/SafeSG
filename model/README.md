## Using Ollama for Language Models

### Step 1: Installing Ollama

We use Ollama for its simplicity and ability to run large language models (LLMs) even on non-GPU intensive machines. You can install Ollama by visiting [ollama.com](https://ollama.com/) and following the installation instructions for your operating system.

### Step 2: Selecting an LLM Model

After installing Ollama, you can select your preferred LLM model from the options available on the [Ollama GitHub repository](https://github.com/ollama/ollama). Choose a model that best fits your needs and download it to your local machine.

### Step 3: Initializing Ollama

To start using Ollama locally, run the command `ollama serve` in your terminal. This initializes and runs Ollama on your machine. Make sure to run this command whenever you need to interact with Ollama.

### Step 4: Creating a Custom Model

If you want to create a custom model, you can use the `ollama create` command. For example, to create a model named `sgsmodel`, you can run:

```
ollama create sgsmodel -f .model/modelfile
```

Replace `.model/modelfile` with the path to your model file.

### Step 5: Running Your Application

Ensure that Ollama is running locally before starting your application. You can start your application by running `npm start` in your terminal. This will start the backend and run your application, allowing it to interact with Ollama.
