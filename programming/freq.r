# 20 yr bin 20 yr slide harmonic analysis/fft
#age=c(0.01, 0.03, 0.05, 0.07, 0.09, 0.11, 0.13, 0.15, 0.17, 0.19, 0.21, 0.23, 0.25, 0.27, 0.29, 0.31, 0.33, 0.35, 0.37, 0.39, 0.41, 0.43, 0.45, 0.47, 0.49, 0.51, 0.53, 0.55, 0.57, 0.59, 0.61, 0.63, 0.65, 0.67, 0.69, 0.71, 0.73, 0.75, 0.77, 0.79, 0.81, 0.83, 0.85, 0.87, 0.89, 0.91, 0.93, 0.95, 0.97, 0.99, 1.01, 1.03, 1.05, 1.07, 1.09, 1.11, 1.13, 1.15, 1.17, 1.19, 1.21, 1.23, 1.25, 1.27, 1.29, 1.31, 1.33, 1.35, 1.37, 1.39, 1.41, 1.43, 1.45, 1.47, 1.49, 1.51, 1.53, 1.55, 1.57, 1.59, 1.61, 1.63, 1.65, 1.67, 1.69, 1.71, 1.73, 1.75, 1.77, 1.79, 1.81, 1.83, 1.85, 1.87, 1.89, 1.91, 1.93, 1.95, 1.97, 1.99, 2.01, 2.03, 2.05, 2.07, 2.09, 2.11, 2.13, 2.15, 2.17, 2.19, 2.21, 2.23, 2.25, 2.27, 2.29, 2.31, 2.33, 2.35, 2.37, 2.39, 2.41, 2.43, 2.45, 2.47, 2.49, 2.51, 2.53, 2.55, 2.57, 2.59, 2.61, 2.63, 2.65, 2.67, 2.69, 2.71, 2.73, 2.75, 2.77, 2.79, 2.81, 2.83, 2.85, 2.87, 2.89, 2.91, 2.93, 2.95, 2.97, 2.99, 3.01, 3.03, 3.05, 3.07, 3.09, 3.11, 3.13, 3.15, 3.17, 3.19, 3.21, 3.23, 3.25, 3.27, 3.29, 3.31, 3.33, 3.35, 3.37, 3.39, 3.41, 3.43, 3.45, 3.47, 3.49, 3.51, 3.53, 3.55, 3.57, 3.59, 3.61, 3.63, 3.65, 3.67, 3.69, 3.71, 3.73, 3.75, 3.77, 3.79, 3.81, 3.83, 3.85, 3.87, 3.89, 3.91, 3.93, 3.95, 3.97, 3.99, 4.01, 4.03, 4.05, 4.07, 4.09, 4.11, 4.13, 4.15, 4.17, 4.19, 4.21, 4.23, 4.25, 4.27, 4.29, 4.31, 4.33, 4.35, 4.37, 4.39, 4.41, 4.43, 4.45, 4.47, 4.49, 4.51, 4.53, 4.55, 4.57, 4.59, 4.61, 4.63, 4.65, 4.67, 4.69, 4.71, 4.73, 4.75, 4.77, 4.79, 4.81, 4.83, 4.85, 4.87, 4.89, 4.91, 4.93, 4.95, 4.97, 4.99, 5.01, 5.03, 5.05, 5.07, 5.09, 5.11, 5.13, 5.15, 5.17, 5.19, 5.21, 5.23, 5.25, 5.27, 5.29, 5.31, 5.33, 5.35, 5.37, 5.39, 5.41, 5.43, 5.45, 5.47, 5.49, 5.51, 5.53, 5.55, 5.57, 5.59, 5.61, 5.63, 5.65, 5.67, 5.69, 5.71, 5.73, 5.75, 5.77, 5.79, 5.81, 5.83, 5.85, 5.87, 5.89, 5.91, 5.93, 5.95, 5.97, 5.99, 6.01, 6.03, 6.05, 6.07, 6.09, 6.11, 6.13, 6.15, 6.17, 6.19, 6.21, 6.23, 6.25, 6.27, 6.29, 6.31, 6.33, 6.35, 6.37, 6.39, 6.41, 6.43, 6.45, 6.47, 6.49, 6.51, 6.53, 6.55, 6.57, 6.59, 6.61, 6.63, 6.65, 6.67, 6.69, 6.71, 6.73, 6.75, 6.77, 6.79, 6.81, 6.83, 6.85, 6.87, 6.89, 6.91, 6.93, 6.95, 6.97, 6.99, 7.01, 7.03, 7.05, 7.07, 7.09, 7.11, 7.13, 7.15, 7.17, 7.19, 7.21, 7.23, 7.25, 7.27, 7.29, 7.31, 7.33, 7.35, 7.37, 7.39, 7.41, 7.43, 7.45, 7.47, 7.49, 7.51, 7.53, 7.55, 7.57, 7.59, 7.61, 7.63, 7.65, 7.67, 7.69, 7.71, 7.73, 7.75, 7.77, 7.79, 7.81, 7.83, 7.85, 7.87, 7.89, 7.91, 7.93, 7.95, 7.97, 7.99, 8.01, 8.03, 8.05, 8.07, 8.09, 8.11, 8.13, 8.15, 8.17, 8.19, 8.21, 8.23, 8.25, 8.27, 8.29, 8.31, 8.33, 8.35, 8.37, 8.39, 8.41, 8.43, 8.45, 8.47, 8.49, 8.51, 8.53, 8.55, 8.57, 8.59, 8.61, 8.63, 8.65, 8.67, 8.69, 8.71, 8.73, 8.75, 8.77, 8.79, 8.81, 8.83, 8.85, 8.87, 8.89, 8.91, 8.93, 8.95, 8.97, 8.99, 9.01, 9.03, 9.05, 9.07, 9.09, 9.11, 9.13, 9.15, 9.17, 9.19, 9.21, 9.23, 9.25, 9.27, 9.29, 9.31, 9.33, 9.35, 9.37, 9.39, 9.41, 9.43, 9.45, 9.47, 9.49, 9.51, 9.53, 9.55, 9.57, 9.59, 9.61, 9.63, 9.65, 9.67, 9.69, 9.71, 9.73, 9.75, 9.77, 9.79, 9.81)
#age=c(0.01, 0.03, 0.05, 0.07, 0.09, 0.11, 0.13, 0.15, 0.17, 0.19, 0.21, 0.23, 0.25, 0.27, 0.29, 0.31, 0.33, 0.35, 0.37, 0.39, 0.41, 0.43, 0.45, 0.47, 0.49, 0.51, 0.53, 0.55, 0.57, 0.59, 0.61, 0.63, 0.65, 0.67, 0.69, 0.71, 0.73, 0.75, 0.77, 0.79, 0.81, 0.83, 0.85, 0.87, 0.89, 0.91, 0.93, 0.95, 0.97, 0.99, 1.01, 1.03, 1.05, 1.07, 1.09, 1.11, 1.13, 1.15, 1.17, 1.19, 1.21, 1.23, 1.25, 1.27, 1.29, 1.31, 1.33, 1.35, 1.37, 1.39, 1.41, 1.43, 1.45, 1.47, 1.49, 1.51, 1.53, 1.55, 1.57, 1.59, 1.61, 1.63, 1.65, 1.67, 1.69, 1.71, 1.73, 1.75, 1.77, 1.79, 1.81, 1.83, 1.85, 1.87, 1.89, 1.91, 1.93, 1.95, 1.97, 1.99, 2.01, 2.03, 2.05, 2.07, 2.09, 2.11, 2.13, 2.15, 2.17, 2.19, 2.21, 2.23, 2.25, 2.27, 2.29, 2.31, 2.33, 2.35, 2.37, 2.39, 2.41, 2.43, 2.45, 2.47, 2.49, 2.51, 2.53, 2.55, 2.57, 2.59, 2.61, 2.63, 2.65, 2.67, 2.69, 2.71, 2.73, 2.75, 2.77, 2.79, 2.81, 2.83, 2.85, 2.87, 2.89, 2.91, 2.93, 2.95, 2.97, 2.99, 3.01, 3.03, 3.05, 3.07, 3.09, 3.11, 3.13, 3.15, 3.17, 3.19, 3.21, 3.23, 3.25, 3.27, 3.29, 3.31, 3.33, 3.35, 3.37, 3.39, 3.41, 3.43, 3.45, 3.47, 3.49, 3.51, 3.53, 3.55, 3.57, 3.59, 3.61, 3.63, 3.65, 3.67, 3.69, 3.71, 3.73, 3.75, 3.77, 3.79, 3.81, 3.83, 3.85, 3.87, 3.89, 3.91, 3.93, 3.95, 3.97, 3.99, 4.01, 4.03, 4.05, 4.07, 4.09, 4.11, 4.13, 4.15, 4.17, 4.19, 4.21, 4.23, 4.25, 4.27, 4.29, 4.31, 4.33, 4.35, 4.37, 4.39, 4.41, 4.43, 4.45, 4.47, 4.49, 4.51, 4.53, 4.55, 4.57, 4.59, 4.61, 4.63, 4.65, 4.67, 4.69, 4.71, 4.73, 4.75, 4.77, 4.79, 4.81, 4.83, 4.85, 4.87, 4.89, 4.91, 4.93, 4.95, 4.97, 4.99, 5.01, 5.03, 5.05, 5.07, 5.09, 5.11, 5.13, 5.15, 5.17, 5.19, 5.21, 5.23, 5.25, 5.27, 5.29, 5.31, 5.33, 5.35, 5.37, 5.39, 5.41, 5.43, 5.45, 5.47, 5.49, 5.51, 5.53, 5.55, 5.57, 5.59, 5.61, 5.63, 5.65, 5.67, 5.69, 5.71, 5.73, 5.75, 5.77, 5.79, 5.81, 5.83, 5.85, 5.87, 5.89, 5.91, 5.93, 5.95, 5.97, 5.99, 6.01, 6.03, 6.05, 6.07, 6.09, 6.11, 6.13, 6.15, 6.17, 6.19, 6.21, 6.23, 6.25, 6.27, 6.29, 6.31, 6.33, 6.35, 6.37, 6.39, 6.41, 6.43, 6.45, 6.47, 6.49, 6.51, 6.53, 6.55, 6.57, 6.59, 6.61, 6.63, 6.65, 6.67, 6.69, 6.71, 6.73, 6.75, 6.77, 6.79, 6.81, 6.83, 6.85, 6.87, 6.89, 6.91, 6.93, 6.95, 6.97, 6.99, 7.01, 7.03, 7.05, 7.07, 7.09, 7.11, 7.13, 7.15, 7.17, 7.19, 7.21, 7.23, 7.25, 7.27, 7.29, 7.31, 7.33, 7.35, 7.37, 7.39, 7.41, 7.43, 7.45, 7.47, 7.49, 7.51, 7.53, 7.55, 7.57, 7.59, 7.61, 7.63, 7.65, 7.67, 7.69, 7.71, 7.73, 7.75, 7.77, 7.79, 7.81, 7.83, 7.85, 7.87, 7.89, 7.91, 7.93, 7.95, 7.97, 7.99, 8.01, 8.03, 8.05, 8.07, 8.09, 8.11, 8.13, 8.15, 8.17, 8.19, 8.21, 8.23, 8.25, 8.27, 8.29, 8.31, 8.33, 8.35, 8.37, 8.39, 8.41, 8.43, 8.45, 8.47, 8.49, 8.51, 8.53, 8.55, 8.57, 8.59, 8.61, 8.63, 8.65, 8.67, 8.69, 8.71, 8.73, 8.75, 8.77, 8.79, 8.81, 8.83, 8.85, 8.87, 8.89, 8.91, 8.93, 8.95, 8.97, 8.99, 9.01, 9.03, 9.05, 9.07, 9.09, 9.11, 9.13, 9.15, 9.17, 9.19, 9.21, 9.23, 9.25, 9.27, 9.29, 9.31, 9.33, 9.35, 9.37, 9.39, 9.41, 9.43, 9.45, 9.47, 9.49, 9.51, 9.53, 9.55, 9.57, 9.59, 9.61, 9.63, 9.65, 9.67, 9.69, 9.71, 9.73, 9.75, 9.77, 9.79, 9.81, 9.83, 9.85, 9.87, 9.89, 9.91, 9.93, 9.95, 9.97)

#age = c(age,9.99, 10.01, 10.03, 10.05, 10.07, 10.09, 10.11, 10.13, 10.15, 10.17, 10.19, 10.21, 10.23, 10.25, 10.27, 10.29, 10.31, 10.33, 10.35, 10.37, 10.39, 10.41, 10.43, 10.45, 10.47, 10.49, 10.51, 10.53, 10.55, 10.57, 10.59, 10.61, 10.63, 10.65, 10.67, 10.69, 10.71, 10.73, 10.75, 10.77, 10.79, 10.81, 10.83, 10.85, 10.87, 10.89, 10.91, 10.93, 10.95, 10.97, 10.99, 11.01, 11.03, 11.05, 11.07, 11.09, 11.11, 11.13, 11.15, 11.17, 11.19, 11.21, 11.23, 11.25, 11.27, 11.29, 11.31, 11.33, 11.35, 11.37, 11.39, 11.41, 11.43, 11.45, 11.47, 11.49, 11.51, 11.53, 11.55, 11.57, 11.59, 11.61, 11.63, 11.65, 11.67, 11.69, 11.71, 11.73, 11.75, 11.77, 11.79, 11.81, 11.83, 11.85, 11.87, 11.89, 11.91, 11.93, 11.95, 11.97, 11.99)

age = c(0.05, 0.15, 0.25, 0.35, 0.45, 0.55, 0.65, 0.75, 0.85, 0.95, 1.05, 1.15, 1.25, 1.35, 1.45, 1.55, 1.65, 1.75, 1.85, 1.95, 2.05, 2.15, 2.25, 2.35, 2.45, 2.55, 2.65, 2.75, 2.85, 2.95, 3.05, 3.15, 3.25, 3.35, 3.45, 3.55, 3.65, 3.75, 3.85, 3.95, 4.05, 4.15, 4.25, 4.35, 4.45, 4.55, 4.65, 4.75, 4.85, 4.95, 5.05, 5.15, 5.25, 5.35, 5.45, 5.55, 5.65, 5.75, 5.85, 5.95, 6.05, 6.15, 6.25, 6.35, 6.45, 6.55, 6.65, 6.75, 6.85, 6.95, 7.05, 7.15, 7.25, 7.35, 7.45, 7.55, 7.65, 7.75, 7.85, 7.95, 8.05, 8.15, 8.25, 8.35, 8.45, 8.55, 8.65, 8.75, 8.85, 8.95, 9.05, 9.15, 9.25, 9.35, 9.45, 9.55, 9.65, 9.75, 9.85, 9.95, 10.05, 10.15, 10.25, 10.35, 10.45, 10.55, 10.65, 10.75, 10.85, 10.95, 11.05, 11.15, 11.25, 11.35, 11.45, 11.55, 11.65, 11.75, 11.85, 11.95)
#freq=c(89, 55, 55, 45, 39, 32, 32, 29, 21, 17, 19, 17, 17, 17, 23, 31, 56, 59, 65, 64, 66, 67, 71, 73, 64, 36, 36, 37, 35, 38, 40, 39, 34, 31, 33, 38, 40, 37, 36, 32, 30, 30, 32, 39, 37, 38, 34, 34, 30, 32, 30, 32, 29, 33, 33, 31, 31, 34, 42, 43, 40, 41, 41, 33, 34, 47, 49, 46, 38, 35, 39, 38, 38, 35, 38, 34, 32, 31, 32, 38, 32, 30, 30, 33, 29, 14, 14, 16, 15, 9, 25, 25, 31, 29, 31, 45, 45, 45, 47, 47, 33, 36, 34, 34, 32, 23, 23, 36, 35, 35, 34, 31, 27, 25, 30, 46, 47, 34, 38, 38, 41, 45, 45, 45, 42, 24, 24, 23, 20, 21, 25, 21, 21, 21, 20, 18, 17, 16, 14, 14, 28, 28, 28, 32, 33, 37, 37, 37, 38, 37, 20, 20, 20, 19, 18, 16, 16, 17, 19, 21, 16, 16, 16, 14, 17, 26, 26, 27, 27, 25, 35, 35, 35, 37, 34, 25, 25, 23, 22, 22, 20, 21, 21, 18, 17, 16, 16, 16, 13, 13, 38, 37, 37, 37, 37, 42, 42, 42, 42, 44, 18, 18, 18, 18, 18, 13, 13, 13, 17, 15, 12, 6, 6, 6, 6, 6, 14, 15, 12, 12, 12, 16, 16, 22, 22, 21, 15, 14, 14, 14, 14, 13, 13, 7, 7, 7, 7, 7, 6, 6, 6, 16, 16, 18, 18, 18, 18, 18, 22, 22, 22, 12, 12, 10, 10, 10, 9, 9, 5, 5, 5, 2, 2, 2, 2, 2, 15, 15, 15, 15, 15, 19, 19, 19, 19, 19, 5, 5, 6, 6, 6, 3, 3, 3, 3, 3, 4, 4, 3, 3, 3, 18, 18, 18, 18, 18, 16, 16, 16, 16, 16, 5, 6, 6, 6, 6, 9, 9, 9, 9, 9, 4, 3, 4, 4, 4, 12, 12, 12, 12, 12, 12, 12, 11, 12, 12, 1, 1, 1, 1, 1, 3, 3, 5, 4, 5, 5, 5, 5, 5, 5, 30, 30, 28, 28, 27, 29, 29, 29, 29, 29, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 25, 25, 25, 25, 25, 27, 27, 27, 27, 27, 6, 6, 6, 6, 6, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 9, 9, 9, 9, 9, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)

#freq=c(42, 2, 12, 7, 7, 1, 3, 10, 4, 1, 8, 2, 2, 1, 0, 1, 0, 2, 2, 7, 0, 2, 2, 9, 30, 2, 3, 8, 1, 9, 1, 6, 4, 0, 2, 2, 4, 6, 4, 11, 0, 1, 1, 2, 7, 4, 1, 5, 0, 9, 0, 3, 8, 0, 8, 0, 1, 1, 2, 7, 2, 0, 12, 0, 6, 0, 4, 9, 3, 4, 3, 0, 4, 1, 19, 2, 1, 1, 0, 8, 2, 0, 1, 4, 15, 0, 0, 2, 6, 2, 0, 0, 4, 0, 0, 0, 2, 1, 0, 18, 0, 6, 2, 2, 14, 0, 2, 3, 0, 4, 3, 4, 2, 0, 5, 0, 15, 2, 0, 3, 0, 0, 0, 5, 21, 1, 2, 6, 0, 6, 4, 0, 0, 2, 3, 1, 1, 3, 1, 10, 0, 0, 0, 1, 1, 0, 0, 1, 1, 24, 0, 0, 4, 2, 5, 0, 0, 2, 0, 7, 0, 0, 3, 1, 3, 0, 1, 4, 2, 2, 0, 0, 1, 4, 12, 0, 2, 4, 0, 12, 0, 0, 3, 1, 3, 0, 0, 3, 0, 10, 1, 0, 0, 0, 2, 0, 0, 0, 0, 35, 0, 0, 0, 0, 7, 0, 0, 0, 2, 3, 6, 0, 0, 0, 1, 1, 0, 4, 0, 0, 0, 0, 0, 0, 1, 9, 1, 1, 0, 0, 4, 0, 6, 0, 0, 3, 0, 1, 0, 0, 3, 0, 0, 0, 0, 3, 0, 0, 0, 0, 13, 0, 2, 0, 0, 3, 0, 4, 0, 0, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 1, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 24, 0, 0, 0, 0, 3, 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)

freq=c(70, 19, 13, 6, 25, 41, 17, 23, 10, 17, 22, 10, 21, 26, 27, 12, 22, 10, 4, 21, 24, 9, 14, 20, 26, 15, 9, 16, 2, 26, 11, 9, 7, 9, 17, 18, 7, 13, 3, 35, 7, 11, 2, 4, 1, 11, 10, 4, 3, 3, 15, 7, 3, 2, 0, 15, 4, 2, 1, 2, 16, 0, 6, 3, 1, 11, 1, 0, 5, 0, 27, 2, 0, 0, 1, 6, 0, 1, 0, 1, 24, 3, 3, 1, 0, 7, 0, 0, 1, 0, 10, 0, 0, 0, 1, 4, 5, 0, 0, 0, 13, 0, 0, 3, 0, 6, 0, 0, 1, 0, 15, 1, 0, 0, 0, 3, 0, 2, 0, 0)



# cs is the vector of complex points to convert
convert.fft <- function(cs, sample.rate=1) {
  cs <- cs / length(cs) # normalize

  distance.center <- function(c)signif( Mod(c),        4)
  angle           <- function(c)signif( 180*Arg(c)/pi, 3)
  
  df <- data.frame(cycle    = 0:(length(cs)-1),
                   freq     = 0:(length(cs)-1) * sample.rate / length(cs),
                   strength = sapply(cs, distance.center),
                   delay    = sapply(cs, angle))
  df
}

convert.fft(fft(1:4))

# returns the x.n time series for a given time sequence (ts) and
# a vector with the amount of frequencies k in the signal (X.k)
get.trajectory <- function(X.k,ts,acq.freq) {
  
  N   <- length(ts)
  i   <- complex(real = 0, imaginary = 1)
  x.n <- rep(0,N)           # create vector to keep the trajectory
  ks  <- 0:(length(X.k)-1)
  
  for(n in 0:(N-1)) {       # compute each time point x_n based on freqs X.k
    x.n[n+1] <- sum(X.k * exp(i*2*pi*ks*n/N)) / N
  }
  
  x.n * acq.freq 
}

plot.frequency.spectrum <- function(X.k, xlimits=c(0,length(X.k))) {
      plot.data  <- cbind(0:(length(X.k)-1), Mod(X.k))

  # TODO: why this scaling is necessary?
  plot.data[2:length(X.k),2] <- 2*plot.data[2:length(X.k),2] 
    
    plot(plot.data, t="h", lwd=2, main="", 
                xlab="Frequency (1/yr)", ylab="Strength", 
                       xlim=xlimits, ylim=c(0,max(Mod(plot.data[,2]))))
}

# Plot the i-th harmonic
# Xk: the frequencies computed by the FFt
#  i: which harmonic
# ts: the sampling time points
# acq.freq: the acquisition rate
plot.harmonic <- function(Xk, i, ts, acq.freq, color="red") {
    Xk.h <- rep(0,length(Xk))
    Xk.h[i+1] <- Xk[i+1] # i-th harmonic
    print('i=')
    print(i)
    print(head(Xk.h,10))
    print('---------------------------\n')
    harmonic.trajectory <- get.trajectory(Xk.h, ts, acq.freq=acq.freq)
    print('zeros')
    zeros <- harmonic.trajectory 
    idx=0
    for(z in zeros) {
        a = Mod(z)
        print(z)
        if(a==0) {
            print(idx)
            print(z)
        }
        idx = idx + 1
    }
    #zeros.index <- 
    #cycle <- 
    points(ts, harmonic.trajectory, type="l", col=color)
}

plot.show <- function(trajectory, time=1, harmonics=-1, plot.freq=FALSE) {

  acq.freq <- length(trajectory)/time      # data acquisition frequency (Hz)
  ts  <- seq(0,time-1/acq.freq,1/acq.freq) # vector of sampling time-points (s) 
  
  X.k <- fft(trajectory)
  x.n <- get.trajectory(X.k,ts, acq.freq=acq.freq) / acq.freq
  
  if (plot.freq)
    plot.frequency.spectrum(X.k)
  
  max.y <- ceiling(1.5*max(Mod(x.n)))
  
  if (harmonics[1]==-1) {
    min.y <- floor(min(Mod(x.n)))-1
  } else {
    min.y <- ceiling(-1.5*max(Mod(x.n)))
  }
  
  plot(ts,x.n, type="l",ylim=c(3*min.y,3*max.y))
  #abline(h=min.y:max.y,v=0:time,lty=3)
  points(ts,trajectory,pch=19, cex=0.1, col="red")  # the data points we know
  
  if (harmonics[1]>-1) {
    for(i in 0:length(harmonics)) {
      plot.harmonic(X.k, harmonics[i], ts, acq.freq, color=i+1)
    }
  }
}

fit.lowess <- lowess(age, freq, f=0.33)
fit.loess <- loess(freq ~ age, span=0.33, degree=2)
summary(fit.lowess)
summary(fit.loess)

#Visualization also has different syntax
plot(age, freq,  type='l',  
  	xlab="age", ylab="Number of Events")
points(age, freq, cex=0.25)
lines(fit.lowess, col='green')

timest<-seq(0,12,by=0.05)

predict.loess <- predict(fit.loess, timest, se=TRUE)

#freq_new <- freq - predict.loess$fit

acq.freq = 100

trajectory = freq
X.k = fft(trajectory)
plot.frequency.spectrum(X.k, xlimits=c(0,acq.freq/2))


library(GeneCycle)

f.data <- GeneCycle::periodogram(trajectory)
harmonics <- 1:(acq.freq/2)

#plot(f.data$freq[harmonics]*length(trajectory), 
#     f.data$spec[harmonics]/sum(f.data$spec), 
#     xlab="Harmonics (Hz)", ylab="Amplitute Density", type="h")


plot.show(trajectory, time=10, harmonics=c(25, 36, 45, 47))#, 9,10,11,12, 17,18,19,20,25,26,27)) #, plot.freq=TRUE)
