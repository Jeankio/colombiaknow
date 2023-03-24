//
//  Question.swift
//  Code History
//
//  Created by Jean Karel on 28/02/23.
//

import Foundation

struct Question: Hashable {
    var questionText: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "¿En cuántos departamentos está divido Colombia?",
                 possibleAnswers: ["21",
                                  "43",
                                  "32",
                                  "15"
                                  ],
                 correctAnswerIndex: 2),
        
        Question(questionText: "¿Cuál es el idioma oficial de Colombia?",
                 possibleAnswers: ["Inglés",
                                  "Catalán",
                                  "Francés",
                                  "Español"
                                  ],
                 correctAnswerIndex: 3),
        
        Question(questionText: "¿Qué moneda se maneja en Colombia?",
                 possibleAnswers: ["COP",
                                  "USD",
                                  "JPY",
                                  "EUR"
                                  ],
                 correctAnswerIndex: 0),
        
        Question(questionText: "¿Con cuántos países comparte Colombia fronteras terrestres?",
                 possibleAnswers: ["7",
                                  "12",
                                  "5",
                                  "4"
                                  ],
                 correctAnswerIndex: 2),
        
        Question(questionText: "¿Cuál es la capital del Departamento de Amazónas?",
                 possibleAnswers: ["Florencia",
                                  "Bogotá",
                                  "Guania",
                                  "Leticia"
                                  ],
                 correctAnswerIndex: 3),
        
        Question(questionText: "¿Cuál es la etnia indígena más numerosa de Colombia?",
                 possibleAnswers: ["Sikuani",
                                  "Wayuu",
                                  "Emberá",
                                  "Azteca"
                                  ],
                 correctAnswerIndex: 1),
        
        Question(questionText: "¿En qué año se fundó la ciudad de Bogotá?",
                 possibleAnswers: ["1538",
                                  "1644",
                                  "1946",
                                  "1415"
                                  ],
                 correctAnswerIndex: 0),
        
        Question(questionText: "¿Qué día se celebra el día de la independencia de Colombia?",
                 possibleAnswers: ["Agosto 7",
                                  "Julio 20",
                                  "Mayo 5",
                                  "Abril 3"
                                  ],
                 correctAnswerIndex: 1),
        
        Question(questionText: "¿Qué fué Gabriel García Marquez?",
                 possibleAnswers: ["Futbolista",
                                  "Médico",
                                  "Escritor",
                                  "Cantante"
                                  ],
                 correctAnswerIndex: 2),
        
        Question(questionText: "Cuál es la segunda ciudad más importante de Colombia?",
                 possibleAnswers: ["Bogotá",
                                  "Bquilla",
                                  "Cali",
                                  "Medellín"
                                  ],
                 correctAnswerIndex: 3),
    ]
}
