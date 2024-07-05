function checkAnswer() {
	const correctAnswer = "Paris";
	const form = document.getElementById('quizForm');
	const selectedAnswer = form.elements['answer'].value;
	const resultElement = document.getElementById('result');

	if (selectedAnswer) {
		if (selectedAnswer === correctAnswer) {
			resultElement.textContent = "Correct! The capital of France is Paris.";
			resultElement.style.color = "green";
		} else {
			resultElement.textContent = "Incorrect. The capital of France is Paris.";
			resultElement.style.color = "red";
		}
	} else {
		resultElement.textContent = "Please select an answer.";
		resultElement.style.color = "orange";
	}
}